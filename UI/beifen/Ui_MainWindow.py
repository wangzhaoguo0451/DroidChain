# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/administrator/apkinspector/UI/MainWindow.ui'
#
# Created: Sun Sep  9 18:20:10 2012
#      by: PyQt4 UI code generator 4.8.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_mainWindow(object):
    def setupUi(self, mainWindow):
        mainWindow.setObjectName(_fromUtf8("mainWindow"))
        mainWindow.resize(1052, 629)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Minimum, QtGui.QSizePolicy.Minimum)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(mainWindow.sizePolicy().hasHeightForWidth())
        mainWindow.setSizePolicy(sizePolicy)
        mainWindow.setMinimumSize(QtCore.QSize(100, 100))
        icon = QtGui.QIcon()  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Normal, QtGui.QIcon.On)  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Active, QtGui.QIcon.Off)  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Selected, QtGui.QIcon.Off)  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Selected, QtGui.QIcon.On)  # @UndefinedVariable
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/logo2.png")), QtGui.QIcon.Active, QtGui.QIcon.On)  # @UndefinedVariable
        mainWindow.setWindowIcon(icon)
        mainWindow.setLocale(QtCore.QLocale(QtCore.QLocale.Chinese, QtCore.QLocale.China))
        mainWindow.setIconSize(QtCore.QSize(24, 24))
        self.centralWidget = QtGui.QWidget(mainWindow)  # @UndefinedVariable
        self.centralWidget.setObjectName(_fromUtf8("centralWidget"))
        self.gridLayout = QtGui.QGridLayout(self.centralWidget)  # @UndefinedVariable
        self.gridLayout.setObjectName(_fromUtf8("gridLayout"))
        self.mdiArea = QtGui.QMdiArea(self.centralWidget)  # @UndefinedVariable
        self.mdiArea.setObjectName(_fromUtf8("mdiArea"))
        self.win1 = QtGui.QWidget()  # @UndefinedVariable
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.MinimumExpanding, QtGui.QSizePolicy.MinimumExpanding)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.win1.sizePolicy().hasHeightForWidth())
        self.win1.setSizePolicy(sizePolicy)
        self.win1.setMinimumSize(QtCore.QSize(720, 524))
        self.win1.setObjectName(_fromUtf8("win1"))
        self.gridLayout_1 = QtGui.QGridLayout(self.win1)  # @UndefinedVariable
        self.gridLayout_1.setObjectName(_fromUtf8("gridLayout_1"))
        self.tabWidget = QtGui.QTabWidget(self.win1)  # @UndefinedVariable
        self.tabWidget.setDocumentMode(False)
        self.tabWidget.setObjectName(_fromUtf8("tabWidget"))
        self.tab_cfg = QtGui.QWidget()  # @UndefinedVariable
        self.tab_cfg.setObjectName(_fromUtf8("tab_cfg"))
        self.gridLayout_11 = QtGui.QGridLayout(self.tab_cfg)  # @UndefinedVariable
        self.gridLayout_11.setObjectName(_fromUtf8("gridLayout_11"))
        self.tabWidget.addTab(self.tab_cfg, _fromUtf8(""))
        self.tab_dalvik = QtGui.QWidget()  # @UndefinedVariable
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Preferred, QtGui.QSizePolicy.Preferred)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tab_dalvik.sizePolicy().hasHeightForWidth())
        self.tab_dalvik.setSizePolicy(sizePolicy)
        self.tab_dalvik.setObjectName(_fromUtf8("tab_dalvik"))
        self.gridLayout_12 = QtGui.QGridLayout(self.tab_dalvik)  # @UndefinedVariable
        self.gridLayout_12.setObjectName(_fromUtf8("gridLayout_12"))
        self.tabWidget.addTab(self.tab_dalvik, _fromUtf8(""))
        self.tab_bytecode = QtGui.QWidget()  # @UndefinedVariable
        self.tab_bytecode.setObjectName(_fromUtf8("tab_bytecode"))
        self.gridLayout_13 = QtGui.QGridLayout(self.tab_bytecode)  # @UndefinedVariable
        self.gridLayout_13.setObjectName(_fromUtf8("gridLayout_13"))
        self.tabWidget.addTab(self.tab_bytecode, _fromUtf8(""))
        self.tab_smali = QtGui.QWidget()  # @UndefinedVariable
        self.tab_smali.setObjectName(_fromUtf8("tab_smali"))
        self.gridLayout_14 = QtGui.QGridLayout(self.tab_smali)  # @UndefinedVariable
        self.gridLayout_14.setObjectName(_fromUtf8("gridLayout_14"))
        self.tabWidget.addTab(self.tab_smali, _fromUtf8(""))
        self.tab_java = QtGui.QWidget()  # @UndefinedVariable
        self.tab_java.setObjectName(_fromUtf8("tab_java"))
        self.gridLayout_15 = QtGui.QGridLayout(self.tab_java)  # @UndefinedVariable
        self.gridLayout_15.setObjectName(_fromUtf8("gridLayout_15"))
        self.plainTextEdit_java = QtGui.QPlainTextEdit(self.tab_java)  # @UndefinedVariable
        self.plainTextEdit_java.setObjectName(_fromUtf8("plainTextEdit_java"))
        self.gridLayout_15.addWidget(self.plainTextEdit_java, 0, 0, 1, 1)
        self.tabWidget.addTab(self.tab_java, _fromUtf8(""))
        self.tab_callinout = QtGui.QWidget()  # @UndefinedVariable
        self.tab_callinout.setObjectName(_fromUtf8("tab_callinout"))
        self.gridLayout_16 = QtGui.QGridLayout(self.tab_callinout)  # @UndefinedVariable
        self.gridLayout_16.setObjectName(_fromUtf8("gridLayout_16"))
        self.textEdit_call = QtGui.QTextEdit(self.tab_callinout)  # @UndefinedVariable
        self.textEdit_call.setObjectName(_fromUtf8("textEdit_call"))
        self.gridLayout_16.addWidget(self.textEdit_call, 0, 0, 1, 1)
        self.tabWidget.addTab(self.tab_callinout, _fromUtf8(""))
        self.tab_permission = QtGui.QWidget()  # @UndefinedVariable
        self.tab_permission.setObjectName(_fromUtf8("tab_permission"))
        self.gridLayout_17 = QtGui.QGridLayout(self.tab_permission)  # @UndefinedVariable
        self.gridLayout_17.setObjectName(_fromUtf8("gridLayout_17"))
        self.textEdit_permission = QtGui.QTextEdit(self.tab_permission)  # @UndefinedVariable
        self.textEdit_permission.setObjectName(_fromUtf8("textEdit_permission"))
        self.gridLayout_17.addWidget(self.textEdit_permission, 0, 0, 1, 1)
        self.tabWidget.addTab(self.tab_permission, _fromUtf8(""))
        self.tab_manifest = QtGui.QWidget()  # @UndefinedVariable
        self.tab_manifest.setObjectName(_fromUtf8("tab_manifest"))
        self.gridLayout_18 = QtGui.QGridLayout(self.tab_manifest)  # @UndefinedVariable
        self.gridLayout_18.setObjectName(_fromUtf8("gridLayout_18"))
        self.textBrowser = QtGui.QTextBrowser(self.tab_manifest)  # @UndefinedVariable
        self.textBrowser.setObjectName(_fromUtf8("textBrowser"))
        self.gridLayout_18.addWidget(self.textBrowser, 0, 0, 1, 1)
        self.tabWidget.addTab(self.tab_manifest, _fromUtf8(""))
        self.gridLayout_1.addWidget(self.tabWidget, 0, 0, 1, 1)
        self.win2 = QtGui.QWidget()  # @UndefinedVariable
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.MinimumExpanding, QtGui.QSizePolicy.MinimumExpanding)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.win2.sizePolicy().hasHeightForWidth())
        self.win2.setSizePolicy(sizePolicy)
        self.win2.setMinimumSize(QtCore.QSize(298, 524))
        self.win2.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.win2.setObjectName(_fromUtf8("win2"))
        self.gridLayout_2 = QtGui.QGridLayout(self.win2)  # @UndefinedVariable
        self.gridLayout_2.setObjectName(_fromUtf8("gridLayout_2"))
        self.gridLayout_21 = QtGui.QGridLayout()  # @UndefinedVariable
        self.gridLayout_21.setObjectName(_fromUtf8("gridLayout_21"))
        self.gridLayout_211 = QtGui.QGridLayout()  # @UndefinedVariable
        self.gridLayout_211.setObjectName(_fromUtf8("gridLayout_211"))
        self.lineEdit = QtGui.QLineEdit(self.win2)  # @UndefinedVariable
        self.lineEdit.setObjectName(_fromUtf8("lineEdit"))
        self.gridLayout_211.addWidget(self.lineEdit, 0, 0, 1, 2)
        self.radioButton_filter = QtGui.QRadioButton(self.win2)  # @UndefinedVariable
        self.radioButton_filter.setObjectName(_fromUtf8("radioButton_filter"))
        self.gridLayout_211.addWidget(self.radioButton_filter, 1, 0, 1, 1)
        self.radioButton_search = QtGui.QRadioButton(self.win2)  # @UndefinedVariable
        self.radioButton_search.setObjectName(_fromUtf8("radioButton_search"))
        self.gridLayout_211.addWidget(self.radioButton_search, 1, 1, 1, 1)
        self.pushButton = QtGui.QPushButton(self.win2)  # @UndefinedVariable
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.pushButton.sizePolicy().hasHeightForWidth())
        self.pushButton.setSizePolicy(sizePolicy)
        self.pushButton.setMinimumSize(QtCore.QSize(100, 0))
        self.pushButton.setObjectName(_fromUtf8("pushButton"))
        self.gridLayout_211.addWidget(self.pushButton, 2, 0, 1, 1)
        self.gridLayout_21.addLayout(self.gridLayout_211, 1, 0, 1, 1)
        self.tabWidget_2 = QtGui.QTabWidget(self.win2)  # @UndefinedVariable
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Preferred, QtGui.QSizePolicy.Preferred)  # @UndefinedVariable
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tabWidget_2.sizePolicy().hasHeightForWidth())
        self.tabWidget_2.setSizePolicy(sizePolicy)
        self.tabWidget_2.setMinimumSize(QtCore.QSize(0, 0))
        self.tabWidget_2.setObjectName(_fromUtf8("tabWidget_2"))
        self.tab_file = QtGui.QWidget()  # @UndefinedVariable
        self.tab_file.setObjectName(_fromUtf8("tab_file"))
        self.gridLayout_2121 = QtGui.QGridLayout(self.tab_file)  # @UndefinedVariable
        self.gridLayout_2121.setObjectName(_fromUtf8("gridLayout_2121"))
        self.treeWidget_files = QtGui.QTreeWidget(self.tab_file)  # @UndefinedVariable
        self.treeWidget_files.setObjectName(_fromUtf8("treeWidget_files"))
        self.treeWidget_files.headerItem().setText(0, _fromUtf8("1"))
        self.treeWidget_files.header().setVisible(False)
        self.gridLayout_2121.addWidget(self.treeWidget_files, 0, 1, 1, 1)
        self.tabWidget_2.addTab(self.tab_file, _fromUtf8(""))
        self.tab_strings = QtGui.QWidget()  # @UndefinedVariable
        self.tab_strings.setObjectName(_fromUtf8("tab_strings"))
        self.gridLayout_2122 = QtGui.QGridLayout(self.tab_strings)  # @UndefinedVariable
        self.gridLayout_2122.setObjectName(_fromUtf8("gridLayout_2122"))
        self.listWidget_strings = QtGui.QListWidget(self.tab_strings)  # @UndefinedVariable
        self.listWidget_strings.setEditTriggers(QtGui.QAbstractItemView.DoubleClicked|QtGui.QAbstractItemView.EditKeyPressed)  # @UndefinedVariable
        self.listWidget_strings.setMovement(QtGui.QListView.Static)  # @UndefinedVariable
        self.listWidget_strings.setProperty(_fromUtf8("isWrapping"), False)
        self.listWidget_strings.setResizeMode(QtGui.QListView.Fixed)  # @UndefinedVariable
        self.listWidget_strings.setLayoutMode(QtGui.QListView.SinglePass)  # @UndefinedVariable
        self.listWidget_strings.setObjectName(_fromUtf8("listWidget_strings"))
        self.gridLayout_2122.addWidget(self.listWidget_strings, 0, 0, 1, 1)
        self.tabWidget_2.addTab(self.tab_strings, _fromUtf8(""))
        self.tab_classes = QtGui.QWidget()  # @UndefinedVariable
        self.tab_classes.setObjectName(_fromUtf8("tab_classes"))
        self.gridLayout_2123 = QtGui.QGridLayout(self.tab_classes)  # @UndefinedVariable
        self.gridLayout_2123.setObjectName(_fromUtf8("gridLayout_2123"))
        self.listWidget_classes = QtGui.QListWidget(self.tab_classes)  # @UndefinedVariable
        self.listWidget_classes.setObjectName(_fromUtf8("listWidget_classes"))
        self.gridLayout_2123.addWidget(self.listWidget_classes, 0, 0, 1, 1)
        self.tabWidget_2.addTab(self.tab_classes, _fromUtf8(""))
        self.tab_methods = QtGui.QWidget()  # @UndefinedVariable
        self.tab_methods.setObjectName(_fromUtf8("tab_methods"))
        self.gridLayout_2124 = QtGui.QGridLayout(self.tab_methods)  # @UndefinedVariable
        self.gridLayout_2124.setObjectName(_fromUtf8("gridLayout_2124"))
        self.treeWidget_methods = QtGui.QTreeWidget(self.tab_methods)  # @UndefinedVariable
        self.treeWidget_methods.setStyleSheet(_fromUtf8(""))
        self.treeWidget_methods.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
        self.treeWidget_methods.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
        self.treeWidget_methods.setAutoScrollMargin(16)
        self.treeWidget_methods.setEditTriggers(QtGui.QAbstractItemView.CurrentChanged|QtGui.QAbstractItemView.DoubleClicked|QtGui.QAbstractItemView.EditKeyPressed|QtGui.QAbstractItemView.SelectedClicked)  # @UndefinedVariable
        self.treeWidget_methods.setVerticalScrollMode(QtGui.QAbstractItemView.ScrollPerPixel)  # @UndefinedVariable
        self.treeWidget_methods.setHorizontalScrollMode(QtGui.QAbstractItemView.ScrollPerPixel)  # @UndefinedVariable
        self.treeWidget_methods.setRootIsDecorated(True)
        self.treeWidget_methods.setUniformRowHeights(False)
        self.treeWidget_methods.setAnimated(False)
        self.treeWidget_methods.setHeaderHidden(True)
        self.treeWidget_methods.setObjectName(_fromUtf8("treeWidget_methods"))
        self.treeWidget_methods.headerItem().setText(0, _fromUtf8("1"))
        self.treeWidget_methods.header().setCascadingSectionResizes(True)
        self.treeWidget_methods.header().setHighlightSections(False)
        self.gridLayout_2124.addWidget(self.treeWidget_methods, 0, 0, 1, 1)
        self.tabWidget_2.addTab(self.tab_methods, _fromUtf8(""))
        self.tab_apkinfo = QtGui.QWidget()  # @UndefinedVariable
        self.tab_apkinfo.setObjectName(_fromUtf8("tab_apkinfo"))
        self.gridLayout_3 = QtGui.QGridLayout(self.tab_apkinfo)  # @UndefinedVariable
        self.gridLayout_3.setObjectName(_fromUtf8("gridLayout_3"))
        self.tableWidget_apkinfo = QtGui.QTableWidget(self.tab_apkinfo)  # @UndefinedVariable
        self.tableWidget_apkinfo.setObjectName(_fromUtf8("tableWidget_apkinfo"))
        self.tableWidget_apkinfo.setColumnCount(1)
        self.tableWidget_apkinfo.setRowCount(7)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(0, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(1, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(2, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(3, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(4, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(5, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setVerticalHeaderItem(6, item)
        item = QtGui.QTableWidgetItem()  # @UndefinedVariable
        self.tableWidget_apkinfo.setHorizontalHeaderItem(0, item)
        self.tableWidget_apkinfo.horizontalHeader().setVisible(False)
        self.tableWidget_apkinfo.horizontalHeader().setCascadingSectionResizes(True)
        self.tableWidget_apkinfo.horizontalHeader().setStretchLastSection(True)
        self.tableWidget_apkinfo.verticalHeader().setCascadingSectionResizes(True)
        self.tableWidget_apkinfo.verticalHeader().setStretchLastSection(False)
        self.gridLayout_3.addWidget(self.tableWidget_apkinfo, 0, 0, 1, 1)
        self.tabWidget_2.addTab(self.tab_apkinfo, _fromUtf8(""))
        self.gridLayout_21.addWidget(self.tabWidget_2, 0, 0, 1, 1)
        self.gridLayout_2.addLayout(self.gridLayout_21, 0, 0, 1, 1)
        self.gridLayout.addWidget(self.mdiArea, 0, 0, 1, 1)
        mainWindow.setCentralWidget(self.centralWidget)
        self.menuBar = QtGui.QMenuBar(mainWindow)  # @UndefinedVariable
        self.menuBar.setGeometry(QtCore.QRect(0, 0, 1052, 23))
        self.menuBar.setObjectName(_fromUtf8("menuBar"))
        self.menuFile = QtGui.QMenu(self.menuBar)  # @UndefinedVariable
        self.menuFile.setObjectName(_fromUtf8("menuFile"))
        self.menuEdit_E = QtGui.QMenu(self.menuBar)  # @UndefinedVariable
        self.menuEdit_E.setObjectName(_fromUtf8("menuEdit_E"))
        self.menuTool_T = QtGui.QMenu(self.menuBar)  # @UndefinedVariable
        self.menuTool_T.setObjectName(_fromUtf8("menuTool_T"))
        self.menuHelp_H = QtGui.QMenu(self.menuBar)  # @UndefinedVariable
        self.menuHelp_H.setObjectName(_fromUtf8("menuHelp_H"))
        self.menuSettings_S = QtGui.QMenu(self.menuBar)  # @UndefinedVariable
        self.menuSettings_S.setObjectName(_fromUtf8("menuSettings_S"))
        mainWindow.setMenuBar(self.menuBar)
        self.toolBar = QtGui.QToolBar(mainWindow)  # @UndefinedVariable
        self.toolBar.setIconSize(QtCore.QSize(20, 20))
        self.toolBar.setObjectName(_fromUtf8("toolBar"))
        mainWindow.addToolBar(QtCore.Qt.TopToolBarArea, self.toolBar)
        self.actNew = QtGui.QAction(mainWindow)  # @UndefinedVariable
        icon1 = QtGui.QIcon()  # @UndefinedVariable
        icon1.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/new.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        self.actNew.setIcon(icon1)
        self.actNew.setObjectName(_fromUtf8("actNew"))
        self.actOpen = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actOpen.setEnabled(False)
        icon2 = QtGui.QIcon()  # @UndefinedVariable
        icon2.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/open.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        self.actOpen.setIcon(icon2)
        self.actOpen.setObjectName(_fromUtf8("actOpen"))
        self.actClose = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actClose.setEnabled(False)
        self.actClose.setObjectName(_fromUtf8("actClose"))
        self.actSave = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actSave.setEnabled(False)
        icon3 = QtGui.QIcon()  # @UndefinedVariable
        icon3.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/save.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        self.actSave.setIcon(icon3)
        self.actSave.setObjectName(_fromUtf8("actSave"))
        self.actASave = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actASave.setEnabled(False)
        self.actASave.setObjectName(_fromUtf8("actASave"))
        self.actQuit = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actQuit.setObjectName(_fromUtf8("actQuit"))
        self.actUndo = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actUndo.setObjectName(_fromUtf8("actUndo"))
        self.actCut = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actCut.setObjectName(_fromUtf8("actCut"))
        self.actCopy = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actCopy.setObjectName(_fromUtf8("actCopy"))
        self.actPast = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actPast.setObjectName(_fromUtf8("actPast"))
        self.actAll = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actAll.setObjectName(_fromUtf8("actAll"))
        self.actFind = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actFind.setObjectName(_fromUtf8("actFind"))
        self.About = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.About.setObjectName(_fromUtf8("About"))
        self.actCall_in_out = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actCall_in_out.setObjectName(_fromUtf8("actCall_in_out"))
        self.actConfiguration = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actConfiguration.setObjectName(_fromUtf8("actConfiguration"))
        self.actBack = QtGui.QAction(mainWindow)  # @UndefinedVariable
        self.actBack.setCheckable(False)
        icon4 = QtGui.QIcon()  # @UndefinedVariable
        icon4.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/back.png")), QtGui.QIcon.Normal, QtGui.QIcon.On)  # @UndefinedVariable
        self.actBack.setIcon(icon4)
        self.actBack.setObjectName(_fromUtf8("actBack"))
        self.actForward = QtGui.QAction(mainWindow)  # @UndefinedVariable
        icon5 = QtGui.QIcon()  # @UndefinedVariable
        icon5.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/forward.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        self.actForward.setIcon(icon5)
        self.actForward.setObjectName(_fromUtf8("actForward"))
        self.actBuild = QtGui.QAction(mainWindow)  # @UndefinedVariable
        icon6 = QtGui.QIcon()  # @UndefinedVariable
        icon6.addPixmap(QtGui.QPixmap(_fromUtf8(":/src/images/build.png")), QtGui.QIcon.Normal, QtGui.QIcon.Off)  # @UndefinedVariable
        self.actBuild.setIcon(icon6)
        self.actBuild.setObjectName(_fromUtf8("actBuild"))
        self.menuFile.addAction(self.actNew)
        self.menuFile.addAction(self.actOpen)
        self.menuFile.addAction(self.actClose)
        self.menuFile.addSeparator()
        self.menuFile.addAction(self.actSave)
        self.menuFile.addAction(self.actASave)
        self.menuFile.addSeparator()
        self.menuFile.addAction(self.actQuit)
        self.menuEdit_E.addAction(self.actUndo)
        self.menuEdit_E.addAction(self.actCut)
        self.menuEdit_E.addAction(self.actCopy)
        self.menuEdit_E.addAction(self.actPast)
        self.menuEdit_E.addAction(self.actAll)
        self.menuTool_T.addAction(self.actFind)
        self.menuTool_T.addAction(self.actCall_in_out)
        self.menuHelp_H.addAction(self.About)
        self.menuSettings_S.addAction(self.actConfiguration)
        self.menuBar.addAction(self.menuFile.menuAction())
        self.menuBar.addAction(self.menuEdit_E.menuAction())
        self.menuBar.addAction(self.menuTool_T.menuAction())
        self.menuBar.addAction(self.menuSettings_S.menuAction())
        self.menuBar.addAction(self.menuHelp_H.menuAction())
        self.toolBar.addAction(self.actNew)
        self.toolBar.addAction(self.actOpen)
        self.toolBar.addAction(self.actSave)
        self.toolBar.addSeparator()
        self.toolBar.addAction(self.actBack)
        self.toolBar.addAction(self.actForward)
        self.toolBar.addSeparator()
        self.toolBar.addAction(self.actBuild)

        self.retranslateUi(mainWindow)
        self.tabWidget.setCurrentIndex(1)
        self.tabWidget_2.setCurrentIndex(3)
        QtCore.QMetaObject.connectSlotsByName(mainWindow)

    def retranslateUi(self, mainWindow):
        mainWindow.setWindowTitle(QtGui.QApplication.translate("mainWindow", "APKinspector", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.win1.setWindowTitle(QtGui.QApplication.translate("mainWindow", "MainView", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_cfg), QtGui.QApplication.translate("mainWindow", "CFG", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_dalvik), QtGui.QApplication.translate("mainWindow", "Dalvik", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_bytecode), QtGui.QApplication.translate("mainWindow", "ByteCode", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_smali), QtGui.QApplication.translate("mainWindow", "Smali", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_java), QtGui.QApplication.translate("mainWindow", "Java", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_callinout), QtGui.QApplication.translate("mainWindow", "Call in/out", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_permission), QtGui.QApplication.translate("mainWindow", "Permission", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tab_manifest), QtGui.QApplication.translate("mainWindow", "AndroidManifest.xml", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.win2.setWindowTitle(QtGui.QApplication.translate("mainWindow", "SideView", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.lineEdit.setText(QtGui.QApplication.translate("mainWindow", "Please input the strings", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.radioButton_filter.setText(QtGui.QApplication.translate("mainWindow", "Filter", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.radioButton_search.setText(QtGui.QApplication.translate("mainWindow", "Search", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.pushButton.setText(QtGui.QApplication.translate("mainWindow", "OK", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget_2.setTabText(self.tabWidget_2.indexOf(self.tab_file), QtGui.QApplication.translate("mainWindow", "Files", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget_2.setTabText(self.tabWidget_2.indexOf(self.tab_strings), QtGui.QApplication.translate("mainWindow", "Strings", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget_2.setTabText(self.tabWidget_2.indexOf(self.tab_classes), QtGui.QApplication.translate("mainWindow", "Classes", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget_2.setTabText(self.tabWidget_2.indexOf(self.tab_methods), QtGui.QApplication.translate("mainWindow", "Methods", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(0).setText(QtGui.QApplication.translate("mainWindow", "filename", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(1).setText(QtGui.QApplication.translate("mainWindow", "version code", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(2).setText(QtGui.QApplication.translate("mainWindow", "version name", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(3).setText(QtGui.QApplication.translate("mainWindow", "packages", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(4).setText(QtGui.QApplication.translate("mainWindow", "receivers", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(5).setText(QtGui.QApplication.translate("mainWindow", "services", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.verticalHeaderItem(6).setText(QtGui.QApplication.translate("mainWindow", "permissions", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tableWidget_apkinfo.horizontalHeaderItem(0).setText(QtGui.QApplication.translate("mainWindow", "info", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.tabWidget_2.setTabText(self.tabWidget_2.indexOf(self.tab_apkinfo), QtGui.QApplication.translate("mainWindow", "APKInfo", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.menuFile.setTitle(QtGui.QApplication.translate("mainWindow", "File(&F)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.menuEdit_E.setTitle(QtGui.QApplication.translate("mainWindow", "Edit(&E)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.menuTool_T.setTitle(QtGui.QApplication.translate("mainWindow", "Tools(&T)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.menuHelp_H.setTitle(QtGui.QApplication.translate("mainWindow", "Help(&H)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.menuSettings_S.setTitle(QtGui.QApplication.translate("mainWindow", "Setting(&S)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.toolBar.setWindowTitle(QtGui.QApplication.translate("mainWindow", "toolBar", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actNew.setText(QtGui.QApplication.translate("mainWindow", "New(&N)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actNew.setShortcut(QtGui.QApplication.translate("mainWindow", "Ctrl+N", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actOpen.setText(QtGui.QApplication.translate("mainWindow", "Open(&O)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actClose.setText(QtGui.QApplication.translate("mainWindow", "Close(&C)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actSave.setText(QtGui.QApplication.translate("mainWindow", "Save(&S)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actASave.setText(QtGui.QApplication.translate("mainWindow", "Save as(&A)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actQuit.setText(QtGui.QApplication.translate("mainWindow", "Quit(&X)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actUndo.setText(QtGui.QApplication.translate("mainWindow", "Undo(&U)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actCut.setText(QtGui.QApplication.translate("mainWindow", "Cut(&T)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actCopy.setText(QtGui.QApplication.translate("mainWindow", "Copy(&C)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actPast.setText(QtGui.QApplication.translate("mainWindow", "Past(&P)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actAll.setText(QtGui.QApplication.translate("mainWindow", "All(&A)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actFind.setText(QtGui.QApplication.translate("mainWindow", "Find(&F)", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actFind.setShortcut(QtGui.QApplication.translate("mainWindow", "Ctrl+F", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.About.setText(QtGui.QApplication.translate("mainWindow", "About", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actCall_in_out.setText(QtGui.QApplication.translate("mainWindow", "Call in/out", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actConfiguration.setText(QtGui.QApplication.translate("mainWindow", "Configuration", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBack.setText(QtGui.QApplication.translate("mainWindow", "Back", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBack.setToolTip(QtGui.QApplication.translate("mainWindow", "Backward", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBack.setShortcut(QtGui.QApplication.translate("mainWindow", "Ctrl+B", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actForward.setText(QtGui.QApplication.translate("mainWindow", "Forward", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actForward.setToolTip(QtGui.QApplication.translate("mainWindow", "Forward", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actForward.setShortcut(QtGui.QApplication.translate("mainWindow", "Ctrl+F", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBuild.setText(QtGui.QApplication.translate("mainWindow", "Build", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBuild.setToolTip(QtGui.QApplication.translate("mainWindow", "BuildAPK", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable
        self.actBuild.setShortcut(QtGui.QApplication.translate("mainWindow", "Ctrl+B", None, QtGui.QApplication.UnicodeUTF8))  # @UndefinedVariable

import mainwindow_rc

if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)  # @UndefinedVariable
    mainWindow = QtGui.QMainWindow()  # @UndefinedVariable
    ui = Ui_mainWindow()
    ui.setupUi(mainWindow)
    mainWindow.show()
    sys.exit(app.exec_())

