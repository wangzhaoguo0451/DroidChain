.class public Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlowLayout.java"


# instance fields
.field public a:Z

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field public c:F

.field public d:I

.field public e:I

.field f:I

.field public g:I

.field public h:I

.field i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 471
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 439
    iput-boolean v1, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    .line 440
    iput v1, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    .line 454
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    iput-boolean v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    .line 440
    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    .line 454
    iput v1, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F

    .line 467
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    const/4 v0, 0x4

    const/high16 v2, -0x4080

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F
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
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iput-boolean v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->a:Z

    .line 440
    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->b:I

    .line 454
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->c:F

    .line 476
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 438
    iget v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->j:I

    return v0
.end method

.method static synthetic b(Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 438
    iget v0, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->k:I

    return v0
.end method


# virtual methods
.method final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput p1, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->j:I

    .line 500
    iput p2, p0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->k:I

    .line 501
    return-void
.end method
