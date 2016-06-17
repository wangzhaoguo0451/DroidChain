.class public abstract Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field private static final COLOR_GREEN:Ljava/lang/String; = "#24aa42"

.field private static final COLOR_WHITE:Ljava/lang/String; = "#ffffffff"

.field public static final EXTRA_INTENT_URI:Ljava/lang/String; = "page_intent_uri"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_URI_PARAM:Ljava/lang/String; = "page_uri_param"

.field private static final JUPITER_PACKAGE_NAME:Ljava/lang/String; = "com.wandoujia.phoenix2"

.field public static final KEY_FORCE_CLOSE_TOOLBAR:Ljava/lang/String; = "force_close_toolbar"

.field private static final KEY_TOOLBAR_Y:Ljava/lang/String; = "toolbar_y"


# instance fields
.field protected title:Ljava/lang/String;

.field public toolbar:Landroid/support/v7/widget/Toolbar;

.field public toolbarContainer:Landroid/view/ViewGroup;

.field public toolbarDeco:Landroid/view/View;

.field public toolbarMargin:Landroid/view/View;

.field public toolbarScrollerY:I

.field public toolbarViewBinder:Lhoe;

.field public windowTranslucentStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->windowTranslucentStatus:Z

    return-void
.end method

.method private getSystemBarTintManager()Lhln;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lhlr;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lhlr;

    invoke-interface {v0}, Lhlr;->getSystemBarTintManager()Lhln;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createToolbarMenu(I)Landroid/view/ViewGroup;
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Ld;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 225
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final createToolbarViewBinder(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)Lhoe;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lhoe;

    invoke-direct {v0}, Lhoe;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarViewBinder:Lhoe;

    .line 242
    new-instance v0, Lhdu;

    invoke-direct {v0, p0, p1}, Lhdu;-><init>(Lcom/wandoujia/ripple_framework/fragment/BaseFragment;Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 253
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarViewBinder:Lhoe;

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected getDefaultTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .line 194
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    instance-of v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    if-eqz v1, :cond_1

    .line 198
    check-cast v0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 200
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initializePageUri(Landroid/view/View;)Z
    .locals 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "page_intent_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "page_uri_param"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v2, p1, v1, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "force_close_toolbar"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 125
    :goto_0
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->toolbar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarContainer:Landroid/view/ViewGroup;

    .line 126
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 127
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->toolbar_deco:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarDeco:Landroid/view/View;

    .line 128
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->toolbar_margin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarMargin:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarMargin:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lhlr;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lhlr;

    invoke-interface {v0}, Lhlr;->getSystemBarTintManager()Lhln;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    iget-object v4, v0, Lhln;->a:Lhlq;

    .line 135
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarMargin:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v0, v0, Lhln;->a:Lhlq;

    iget v0, v0, Lhlq;->a:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v2, v2, [I

    const v4, 0x10103ef

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->windowTranslucentStatus:Z

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    :cond_1
    invoke-virtual {p0, v3}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->setToolbarMarginVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_4

    .line 178
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 123
    goto :goto_0

    .line 153
    :cond_4
    if-eqz v1, :cond_5

    .line 154
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getDefaultTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/ripple_framework/R$color;->text_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/wandoujia/ripple_framework/R$drawable;->back_black:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 163
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lhdt;

    invoke-direct {v1, p0}, Lhdt;-><init>(Lcom/wandoujia/ripple_framework/fragment/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const-string v0, "com.wandoujia.phoenix2"

    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/wandoujia/ripple_framework/R$drawable;->ic_back_dark:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 175
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#24aa42"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_1
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->renderSystemBar(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On back"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "toolbar_y"

    iget v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarScrollerY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->pageLoaded()V

    .line 115
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "toolbar_y"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarScrollerY:I

    .line 96
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarViewBinder:Lhoe;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarViewBinder:Lhoe;

    iget v1, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarScrollerY:I

    invoke-virtual {v0, v1}, Lhoe;->a(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public final pageLoaded()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->initializePageUri(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leny;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public renderSystemBar(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 331
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getSystemBarTintManager()Lhln;

    move-result-object v1

    .line 332
    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->isSystemBarEnabled()Z

    move-result v2

    iget-boolean v3, v1, Lhln;->c:Z

    if-eq v3, v2, :cond_0

    iput-boolean v2, v1, Lhln;->c:Z

    iget-boolean v3, v1, Lhln;->b:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_3

    iget-object v1, v1, Lhln;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v2, v1, Lhln;->d:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lhln;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lhln;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lhlo;

    invoke-direct {v1}, Lhlo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lhln;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lhln;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lhlp;

    invoke-direct {v2, v1}, Lhlp;-><init>(Lhln;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public setSystemBarColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getSystemBarTintManager()Lhln;

    move-result-object v0

    .line 340
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {v0, p1}, Lhln;->a(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected setToolbarMarginVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->windowTranslucentStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarMargin:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->toolbarMargin:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method
