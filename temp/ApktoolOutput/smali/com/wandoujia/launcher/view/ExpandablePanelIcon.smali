.class public Lcom/wandoujia/launcher/view/ExpandablePanelIcon;
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
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget-object v0, Lcom/wandoujia/game_launcher/lib/R$styleable;->ExpandablePanel:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->ExpandablePanel_expandedIconSrc:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->a:I

    .line 28
    iget v1, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->a:I

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The expandedIconSrc attribute is required and must refer to a valid drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    sget v1, Lcom/wandoujia/game_launcher/lib/R$styleable;->ExpandablePanel_collapsedIconSrc:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b:I

    .line 33
    iget v1, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b:I

    if-nez v1, :cond_1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The collapsedIconSrc attribute is required and must refer to a valid drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b()V

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->a:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->setImageResource(I)V

    .line 43
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->setImageResource(I)V

    .line 47
    return-void
.end method
