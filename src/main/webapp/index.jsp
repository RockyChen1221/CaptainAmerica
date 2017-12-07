<html   >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <script src="http://echarts.baidu.com/dist/echarts.min.js"></script>
    <script>

        window.onload = function () {
            var canvas = document.getElementById("canvas");
            if (canvas) {
                var context = canvas.getContext("2d");
                drawStar(context, 50, 100, 100);
            } else {
                document.writeln("浏览器不支持canvas组件");
            }
        }
        function drawStar(context, r, x, y) {
            context.lineWidth = 5;
            context.beginPath();
            var dit = Math.PI * 4 / 5;
            var sin = Math.sin(0) * r + y;
            var cos = Math.cos(0) * r + x;
            console.log(0 + ":" + 0);
            //context.moveTo(cos, sin);
            for (var i = 0; i < 5; i++) {
                var tempDit = dit * i;
                sin = Math.sin(tempDit) * r + y;
                cos = Math.cos(tempDit) * r + x;
                context.lineTo(cos, sin);
                console.log(sin + ":" + sin + ":" + tempDit);
            }
            context.closePath();
            context.strokeStyle = "red";
            context.fillStyle = "#DDDDDD";
            context.fill();
        };



        var data = [{
            value: 3299,
            name: '>500w'
        }];
        var option = {
            title: {
                text: "美国队长",
                subtext: "盾牌",
                left: "center",
                textStyle: {
                    //color: "#fff",
                    fontSize: 18
                },
            },

            //backgroundColor: '#ffffff',
            tooltip: {
                trigger: 'item',
                show:false,
                formatter: "{a} <br/>{b}:({d}%)"
            },
            series: [
                {
                    name: '事业线',
                    type: 'pie',
                    radius: ['0%', '20%'],
                    color: [ '#0F3272' ],
                    hoverAnimation:false,
                    data: [{
                        value: 0
                    }]
                },{
                    name: '事业线',
                    type: 'pie',
                    hoverAnimation:false,
                    radius: ['20%', '30%'],
                    color: [ '#C80E11' ],
                    hoverAnimation:false,
                    data: [{
                        value: 0

                    }]
                },{
                    name: '分组',
                    type: 'pie',
                    radius: ['30%', '40%'],
                    color: [ '#FCFCF0'],
                    hoverAnimation:false,
                    data: [{
                        value: 0

                    }]
                }, {
                    name: '分组7',
                    type: 'pie',
                    radius: ['40%', '50%'],
                    color: [ '#C80E11'],
                    hoverAnimation:false,
                    data: [{
                        value: 0

                    }]
                }]
        };

        $(function () {
            var myChart = echarts.init(document.getElementById('initChart'));//echarts
            myChart.setOption(option);
        });

    </script>
</head>
<body>
<canvas id="canvas" ></canvas>

<div id="initChart" style="width: 600px;height: 600px;border: 1px solid red;float: left"></div>
<div ><img width="300px;" src="http://img02.tooopen.com/images/20151204/tooopen_sy_150303386971.jpg"/></div>
</body>
</html>
