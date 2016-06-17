.class public Lcom/wandoujia/p4/game/view/LayoutConfiguration;
.super Ljava/lang/Object;
.source "LayoutConfiguration.java"


# instance fields
.field a:I

.field b:Z

.field c:F

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    .line 13
    iput-boolean v1, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b:Z

    .line 14
    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c:F

    .line 15
    const/16 v0, 0x33

    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->d:I

    .line 16
    iput v1, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    .line 19
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 21
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a(I)V

    .line 22
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b:Z

    .line 23
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a(F)V

    .line 24
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->b(I)V

    .line 25
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->c:F

    .line 57
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 37
    iput p1, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->a:I

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 64
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_1

    .line 65
    or-int/lit8 v0, p1, 0x3

    .line 68
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 69
    or-int/lit8 v0, v0, 0x30

    .line 72
    :cond_0
    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->d:I

    .line 73
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    iput p1, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/game/view/LayoutConfiguration;->e:I

    goto :goto_0
.end method
