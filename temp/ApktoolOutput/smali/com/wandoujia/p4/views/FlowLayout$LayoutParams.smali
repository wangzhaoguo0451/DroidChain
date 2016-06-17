.class public Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# static fields
.field static a:I


# instance fields
.field b:I

.field c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, -0x1

    sput v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 399
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 389
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    .line 390
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->f:Z

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    .line 390
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    .line 391
    iput-boolean v1, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->f:Z

    .line 395
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x2

    :try_start_0
    sget v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    const/4 v0, 0x3

    sget v2, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    .line 390
    sget v0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->f:Z

    .line 404
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 384
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->e:I

    return v0
.end method

.method static synthetic c(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 384
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->c:I

    return v0
.end method

.method static synthetic d(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 384
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic e(Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 384
    iget v0, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d:I

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput p1, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->d:I

    .line 416
    iput p2, p0, Lcom/wandoujia/p4/views/FlowLayout$LayoutParams;->e:I

    .line 417
    return-void
.end method
