.class public final Lftx;
.super Ljava/lang/Object;
.source "LineDefinition.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

.field public final c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(ILcom/wandoujia/p4/game/view/LayoutConfiguration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lftx;->a:Ljava/util/List;

    .line 20
    iput v1, p0, Lftx;->h:I

    .line 21
    iput v1, p0, Lftx;->i:I

    .line 22
    iput p1, p0, Lftx;->c:I

    .line 23
    iput-object p2, p0, Lftx;->b:Lcom/wandoujia/p4/game/view/LayoutConfiguration;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lftx;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lftx;->h:I

    .line 92
    return-void
.end method

.method public final a(ILandroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;

    .line 33
    iget-object v1, p0, Lftx;->a:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    iget v1, p0, Lftx;->f:I

    iget v2, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lftx;->d:I

    .line 36
    iget v1, p0, Lftx;->d:I

    iget v2, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lftx;->f:I

    .line 37
    iget v1, p0, Lftx;->g:I

    iget v2, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    iget v3, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->e:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lftx;->g:I

    .line 39
    iget v1, p0, Lftx;->e:I

    iget v0, v0, Lcom/wandoujia/p4/game/view/FlowLayout$LayoutParams;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lftx;->e:I

    .line 40
    return-void
.end method
