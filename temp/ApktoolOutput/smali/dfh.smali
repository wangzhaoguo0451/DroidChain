.class public final Ldfh;
.super Lhog;
.source "DetailFragment.java"


# instance fields
.field private c:I

.field private d:I

.field private e:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lhog;-><init>(Landroid/view/View;)V

    .line 687
    const/4 v0, 0x1

    iput v0, p0, Ldfh;->c:I

    .line 688
    iput p3, p0, Ldfh;->d:I

    .line 689
    iput-object p2, p0, Ldfh;->e:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    .line 690
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 706
    iget-object v0, p0, Ldfh;->e:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getScrollItemIndex()I

    move-result v0

    iget v1, p0, Ldfh;->c:I

    if-gt v0, v1, :cond_0

    .line 707
    invoke-virtual {p0, v2}, Ldfh;->b(Z)V

    .line 708
    iget-object v0, p0, Ldfh;->a:Landroid/view/View;

    iget v1, p0, Ldfh;->d:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 712
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p0, v2}, Ldfh;->a(Z)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On Scroll start at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldfh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d()V

    .line 695
    iget-object v0, p0, Ldfh;->e:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getScrollItemIndex()I

    move-result v0

    iget v1, p0, Ldfh;->c:I

    if-gt v0, v1, :cond_0

    .line 696
    invoke-virtual {p0, v2}, Ldfh;->b(Z)V

    .line 702
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-virtual {p0, v2}, Ldfh;->a(Z)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On Scroll end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldfh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d()V

    goto :goto_0
.end method
