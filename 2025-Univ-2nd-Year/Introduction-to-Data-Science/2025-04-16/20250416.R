# AIzaSyAFw3210sFaygVU_4ktse1_k2dja8nU1kk
library(ggmap)
register_google(key = "AIzaSyAFw3210sFaygVU_4ktse1_k2dja8nU1kk")
map <- get_googlemap(center = c(126.975684, 37.572752))
ggmap(map)

map <- get_googlemap(center = 
                       c(126.975684, 37.572752),
                     maptype="roadmap")
ggmap(map)

# 지도 확대 및  축소
map <- get_googlemap(center = 
                       c(126.975684, 37.572752),
                     maptype="roadmap",
                     zoom=17)
ggmap(map)

# 지도 해상도
map <- get_googlemap(center = 
                       c(126.975684, 37.572752),
                     maptype="roadmap",
                     zoom=17,
                     size=c(320,320))
ggmap(map, extent="device")
                     
# 주 이용 지도 출력
gc = geocode(enc2utf8("호미곶"))
gc

lonlat = c(gc$lon, gc$lat)
lonlat

map = get_googlemap(center=lonlat,
                    # zoom = 13,
                    marker=gc)
ggmap(map)

# 주소 이용 지도 출력
ggmap(map)
gc=geocode(enc2utf8("pyongyang"))
lonlat = c(gc$lon, gc$lat)

map=get_googlemap(center=lonlat, 
                  maptype="roadmap", 
                  zoom=13, 
                  size=c(320,320))
ggmap(map, extent = "device")


# 예제
library(openxlsx)
# 첫째 시트의 4행부터 읽기
df=read.xlsx(file.choose(), sheet = 1, startRow = 4)

#
head(df)
tail(df)

df[,6] = gsub("N","",df[,6]) #위도 숫자 뒤 "N"제거 "" 없애라
df[,7] = gsub("E","",df[,7]) #경도 숫자 뒤 "N"제거 "" 없애라
df2 = data.frame(lon=df[,7], lat=df[,6], mag=df[,3])
str(df2)

df2[,1] = as.numeric(as.character(df2[,1]))
df2[,2] = as.numeric(as.character(df2[,2]))
df2[,3] = as.numeric(as.character(df2[,3]))
str(df2)

cen = c((max(df2$lon) +min(df2$lon))/2,
        (max(df2$lat) + min(df2$lat))/2)
# 지도 중심 좌표 설정
# center
# 모든 경도 정보의 제일 큰 것 + 제일 작은 것 / 2
map = get_googlemap(center=cen, zoom=6) # zoom 600
gmap = ggmap(map)
gmap + geom_point(data=df2,
                  aes(x=lon,y=lat),
                  color="red",
                  size=df2$mag,
                  alpha=0.5
                  )

eu_data = read.csv('EU_GDP.csv')
str(eu_data)

eu_data$gdp = gsub(",", "", eu_data$gdp)
eu_data$gdp = as.numeric(eu_data$gdp)
str(eu_data)

gc=geocode(eu_data$name)
df=data.frame(city=eu_data$name, lon =gc$lon, lat=gc$lat, gdp=eu_data$gdp)
cen = colMeans(gc)

map = get_googlemap(center = cen , zoom = 4, scale = 2, size = c(640,640),
                    maptype="hybrid")
gmap = ggmap(map)
gmap + geom_point(data = df,
                  aes(x=lon, y =lat),
                  color = "red",
                  size = df$gdp / 100000,
                  alpha = 0.5)


