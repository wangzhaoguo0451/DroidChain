.class public Lcom/wandoujia/p4/views/ExpandablePanelIcon;
.super Landroid/widget/ImageView;
.source "ExpandablePanelIcon.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->ExpandablePanel:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a:I

    .line 29
    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a:I

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The expandedIconSrc attribute is required and must refer to a valid drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b:I

    .line 34
    iget v1, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b:I

    if-nez v1, :cond_1

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The collapsedIconSrc attribute is required and must refer to a valid drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b()V

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->a:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->setImageResource(I)V

    .line 44
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->b:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExpandablePanelIcon;->setImageResource(I)V

    .line 48
    return-void
.end method
