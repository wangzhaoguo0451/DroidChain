.class public Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
.super Landroid/widget/TextView;
.source "StatefulButton.java"


# instance fields
.field public a:Z

.field private b:Leiw;

.field private c:Ljava/lang/String;

.field private d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->c:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->c:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->c:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/R$styleable;->StatefulButton:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    :try_start_0
    sget v0, Lcom/wandoujia/launcher_base/R$styleable;->StatefulButton_multipleState:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;Landroid/view/View;Leiw;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v1, p2, Leiw;->c:Lcom/wandoujia/mvc/Action;

    if-eqz v1, :cond_0

    iget-object v1, p2, Leiw;->c:Lcom/wandoujia/mvc/Action;

    instance-of v1, v1, Lefb;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->PAUSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Leiw;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1, v2, v3, v0, v1}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p2, Leiw;->c:Lcom/wandoujia/mvc/Action;

    instance-of v1, v1, Lefc;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->RESUME:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_0

    :cond_2
    iget-object v1, p2, Leiw;->c:Lcom/wandoujia/mvc/Action;

    instance-of v1, v1, Leei;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->c:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->d:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 82
    iput-object p3, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->e:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public getState()Leiw;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->b:Leiw;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .parameter

    .prologue
    .line 68
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->b:Leiw;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->b:Leiw;

    iget v3, v3, Leiw;->a:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->mergeDrawableStates([I[I)[I

    .line 72
    :cond_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 129
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Leiz;

    invoke-direct {v1, p0}, Leiz;-><init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public setMultipleState(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a:Z

    .line 156
    return-void
.end method

.method public setState(Leiw;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->b:Leiw;

    .line 92
    iget-boolean v0, p1, Leiw;->d:Z

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setEnabled(Z)V

    .line 93
    iget-object v0, p1, Leiw;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget v0, p1, Leiw;->e:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setVisibility(I)V

    .line 95
    new-instance v0, Leiy;

    invoke-direct {v0, p0, p1}, Leiy;-><init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;Leiw;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->refreshDrawableState()V

    goto :goto_0
.end method
