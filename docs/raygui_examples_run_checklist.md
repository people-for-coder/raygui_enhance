# raygui Examples 运行清单

## 1. 使用方式

本仓库已经在当前 Windows 环境下编译出以下示例可执行文件：

- `animation_curve`
- `controls_test_suite`
- `custom_file_dialog`
- `custom_input_box`
- `custom_sliders`
- `floating_window`
- `image_exporter`
- `image_importer_raw`
- `portable_window`
- `property_list`
- `scroll_panel`
- `style_selector`
- `minimal_demo`

推荐使用批处理脚本启动：

- [run_example.bat](E:/WORK/raygui/run_example.bat)

常用方式：

```bat
run_example.bat list
run_example.bat controls_test_suite
run_example.bat style_selector image_exporter
run_example.bat all
```

如果手动运行，请尽量在对应示例目录下启动 exe，这样依赖当前工作目录的例子更稳定。

## 2. 快速建议

如果你是第一次上手，建议按这个顺序体验：

1. `minimal_demo`
2. `controls_test_suite`
3. `style_selector`
4. `scroll_panel`
5. `property_list`
6. `custom_file_dialog`
7. `animation_curve`
8. `image_exporter`
9. `image_importer_raw`
10. 其他示例

## 3. 逐个示例操作清单

### 3.1 `minimal_demo`

运行：

```bat
run_example.bat minimal_demo
```

看什么效果：

- 启动一个最小窗口
- 显示一行标签、一个按钮、一个状态栏
- 程序会自动截图并退出

重点观察：

- `raygui` 是否能正常绘制基础控件
- 窗口、字体、颜色、边框是否显示正常

额外说明：

- 会写出截图文件 [minimal_demo.png](E:/WORK/raygui/examples/minimal_demo/minimal_demo.png)

### 3.2 `controls_test_suite`

运行：

```bat
run_example.bat controls_test_suite
```

看什么效果：

- 综合控件测试窗口
- 包含下拉框、复选框、数值框、文本框、列表、颜色选择器、滚动区域、进度条等

重点观察：

- 左上角下拉框展开/收起行为
- 文本框编辑状态切换
- 中部列表和颜色控件联动
- 底部样式切换框切换不同主题

操作建议：

- 点击各类输入控件，感受 immediate-mode 交互
- 切换主题，看同一套控件如何被样式统一改变
- 拖一个 `.rgs` 样式文件到窗口里，测试外部样式加载

### 3.3 `style_selector`

运行：

```bat
run_example.bat style_selector
```

看什么效果：

- 小型样式预览窗口
- 下拉框切换不同官方主题
- 同时显示当前字体图集纹理

重点观察：

- 各主题的颜色、字体、边框差异
- 切换主题时控件风格和字体纹理是否同步变化

操作建议：

- 依次切换 `Jungle / Candy / Lavanda / Cyber / Terminal / Dark`
- 从 [styles](E:/WORK/raygui/styles) 拖一个 `.rgs` 到窗口里测试换肤

### 3.4 `scroll_panel`

运行：

```bat
run_example.bat scroll_panel
```

看什么效果：

- 一个滚动面板包裹的网格区域
- 右侧有滚动条样式调节参数

重点观察：

- 面板视口与内容区的区别
- 拖动滚动条后内容偏移是否符合预期
- 调节滚动条样式参数后视觉是否立即变化

操作建议：

- 打开 `SHOW CONTENT AREA`
- 调整 `WIDTH / HEIGHT`
- 修改 `BORDER_WIDTH / ARROWS_SIZE / SLIDER_PADDING`

### 3.5 `property_list`

运行：

```bat
run_example.bat property_list
```

看什么效果：

- 一个典型编辑器属性面板
- 包含布尔、整数、浮点、文本、枚举、颜色、向量、矩形等属性

重点观察：

- 不同数据类型如何被统一组织在同一面板中
- 编辑属性时焦点和滚动是否稳定
- 属性值如何影响画面上的调试文本

额外说明：

- 退出时会在当前目录写出 `test.props`

### 3.6 `custom_file_dialog`

运行：

```bat
run_example.bat custom_file_dialog
```

看什么效果：

- 一个自定义模态文件对话框
- 可浏览目录并选择图片
- 选中 png 后主界面会显示图片

重点观察：

- 模态窗口弹出时是否锁住其他 GUI
- 目录切换、文件选中、确认按钮逻辑是否清晰
- 选择图片后主界面预览是否正确

操作建议：

- 点击 `Open Image`
- 定位到 [cat.png](E:/WORK/raygui/examples/custom_file_dialog/cat.png) 或任意 png
- 观察图片是否成功载入

### 3.7 `custom_input_box`

运行：

```bat
run_example.bat custom_input_box
```

看什么效果：

- 一个简单计算器界面
- 自定义浮点数输入框替代整数值框

重点观察：

- 浮点数输入、符号、精度显示是否自然
- 四则运算按钮是否正确更新结果

操作建议：

- 分别输入两个浮点数
- 点击 `+ - * /`
- 观察结果框是否刷新

### 3.8 `custom_sliders`

运行：

```bat
run_example.bat custom_sliders
```

看什么效果：

- 左边是标准滑块/竖滑块/滑条
- 右边是自定义“owning”版本

重点观察：

- 横向和纵向滑块的交互差异
- 自定义滑块在编辑模式下的锁定与释放行为

操作建议：

- 拖动左侧标准滑块
- 再拖动右侧自定义版本
- 对比两侧交互手感和数值同步表现

### 3.9 `floating_window`

运行：

```bat
run_example.bat floating_window
```

看什么效果：

- 两个深色主题的浮动窗口
- 支持拖动、缩放、最小化
- 窗口内容区支持滚动

重点观察：

- 标题栏拖动是否平滑
- 右下角缩放是否正常
- 内容区裁剪与滚动是否正确

操作建议：

- 拖动窗口位置
- 试着缩小或放大窗口
- 点击最小化按钮再恢复

### 3.10 `portable_window`

运行：

```bat
run_example.bat portable_window
```

看什么效果：

- 无系统边框窗口
- 用 `GuiWindowBox()` 自己画出窗口外壳
- 可拖动整个窗口

重点观察：

- 鼠标拖拽顶栏时整个系统窗口是否跟着移动
- 自定义窗口和系统原生装饰分离后的控制方式

### 3.11 `animation_curve`

运行：

```bat
run_example.bat animation_curve
```

看什么效果：

- 一个完整动画曲线编辑器 demo
- 曲线控制一个球体的位置、尺寸和旋转
- 右侧有设置面板与风格切换

重点观察：

- 曲线点调整后动画轨迹是否实时变化
- 复合编辑器控件如何组织
- 复杂界面中滚动、面板、按钮和自定义控件如何协同

操作建议：

- 播放/暂停动画
- 修改一条曲线控制点
- 观察球体运动参数变化

### 3.12 `image_exporter`

运行：

```bat
run_example.bat image_exporter
```

看什么效果：

- 图片拖入后可以预览
- 弹出导出窗口后可选择格式和像素格式
- 支持导出为 `.png`、`.raw`、代码文件

重点观察：

- 图片拖拽载入是否成功
- 鼠标滚轮缩放预览是否正常
- 导出逻辑是否与当前选项一致

操作建议：

- 拖入 [cat.png](E:/WORK/raygui/examples/image_exporter/resources/cat.png) 或其他图片
- 点击 `Image Export`
- 分别测试导出成 `.png` 和 `.raw`

额外说明：

- 导出文件会写到程序当前工作目录

### 3.13 `image_importer_raw`

运行：

```bat
run_example.bat image_importer_raw
```

看什么效果：

- 拖入 `.raw` 文件后弹出导入参数窗口
- 可设置分辨率、像素格式、通道数、位深和头大小
- 成功导入后显示图片

重点观察：

- 参数组合如何影响 raw 图像解释方式
- GUI 如何承载“技术参数型工具”界面

操作建议：

- 拖入 [image_2x2_RGBA.raw](E:/WORK/raygui/examples/image_importer_raw/image_2x2_RGBA.raw)
- 观察自动猜测出的宽高和 header
- 试着手改通道/位深，比较导入结果

### 3.14 `standalone`

运行：

- 这个目录不是现成 exe 示例，而是模板

看什么效果：

- 主要看源码结构，不是直接运行效果

重点观察：

- 如果不用 `raylib`，需要自己提供哪些输入和绘制函数
- `RAYGUI_STANDALONE` 模式的接入边界

建议阅读：

- [raygui_standalone.c](E:/WORK/raygui/examples/standalone/raygui_standalone.c)
- [raygui_custom_backend.h](E:/WORK/raygui/examples/standalone/raygui_custom_backend.h)

## 4. 哪些示例会读写文件

会读取外部文件或支持拖拽资源：

- `custom_file_dialog`：浏览并载入 png
- `style_selector`：支持拖拽 `.rgs` 样式
- `controls_test_suite`：支持拖拽 `.rgs` 样式
- `image_exporter`：支持拖拽图片
- `image_importer_raw`：支持拖拽 `.raw`

会写出文件：

- `minimal_demo`：写截图 `minimal_demo.png`
- `property_list`：退出时写 `test.props`
- `image_exporter`：导出 `.png/.raw/.h`

## 5. 复现建议

如果你要自己重复跑一遍，推荐流程是：

1. 先执行 `run_example.bat list`
2. 依次运行 `minimal_demo`、`controls_test_suite`、`style_selector`
3. 再运行 `property_list`、`scroll_panel`、`custom_file_dialog`
4. 最后运行 `animation_curve`、`image_exporter`、`image_importer_raw`

这样体验是从“基础控件”到“业务工具”逐步递进的。
