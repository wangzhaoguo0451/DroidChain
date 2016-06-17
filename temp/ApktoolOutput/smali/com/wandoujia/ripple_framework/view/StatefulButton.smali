.class public Lcom/wandoujia/ripple_framework/view/StatefulButton;
.super Lcom/wandoujia/ripple_framework/view/CustomFontTextView;
.source "StatefulButton.java"


# instance fields
.field public a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    .line 23
    new-instance v0, Lhnw;

    invoke-direct {v0, p0}, Lhnw;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->c:Landroid/view/View$OnClickListener;

    .line 38
    sget v0, Lcom/wandoujia/ripple_framework/R$drawable;->jupiter_button_bg:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setBackgroundResource(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    .line 23
    new-instance v0, Lhnw;

    invoke-direct {v0, p0}, Lhnw;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->c:Landroid/view/View$OnClickListener;

    .line 43
    invoke-direct {p0, p2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a(Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    .line 23
    new-instance v0, Lhnw;

    invoke-direct {v0, p0}, Lhnw;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->c:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0, p2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/StatefulButton;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/ripple_framework/R$styleable;->StatefulButton:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 55
    :try_start_0
    sget v0, Lcom/wandoujia/ripple_framework/R$styleable;->StatefulButton_lightStyle:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    :goto_0
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a:Z

    if-eqz v0, :cond_0

    .line 62
    sget v0, Lcom/wandoujia/ripple_framework/R$drawable;->jupiter_button_bg_light:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$color;->green_primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setTextColor(I)V

    .line 65
    :cond_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    monitor-enter p0

    if-nez p1, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->c:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->b(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->a(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/StatefulButton;->d:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method
