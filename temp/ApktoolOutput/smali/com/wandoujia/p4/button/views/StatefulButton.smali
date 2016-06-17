.class public Lcom/wandoujia/p4/button/views/StatefulButton;
.super Landroid/widget/TextView;
.source "StatefulButton.java"


# instance fields
.field public a:Z

.field private b:Lfaq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->a:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/button/views/StatefulButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/button/views/StatefulButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/phoenix2/R$styleable;->StatefulButton:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public getState()Lfaq;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->b:Lfaq;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .parameter

    .prologue
    .line 60
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->b:Lfaq;

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->b:Lfaq;

    iget v3, v3, Lfaq;->a:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->mergeDrawableStates([I[I)[I

    .line 64
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
    .line 106
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 108
    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lfat;

    invoke-direct {v1, p0}, Lfat;-><init>(Lcom/wandoujia/p4/button/views/StatefulButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public setMultipleState(Z)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->a:Z

    .line 135
    return-void
.end method

.method public setState(Lfaq;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v0, "StatefulButton"

    const-string v1, "The state cannot be null when setState."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/button/views/StatefulButton;->b:Lfaq;

    .line 80
    iget-boolean v0, p1, Lfaq;->e:Z

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setEnabled(Z)V

    .line 81
    iget-object v0, p1, Lfaq;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget v0, p1, Lfaq;->f:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 83
    new-instance v0, Lfas;

    invoke-direct {v0, p0, p1}, Lfas;-><init>(Lcom/wandoujia/p4/button/views/StatefulButton;Lfaq;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/p4/button/views/StatefulButton;->refreshDrawableState()V

    goto :goto_0
.end method
