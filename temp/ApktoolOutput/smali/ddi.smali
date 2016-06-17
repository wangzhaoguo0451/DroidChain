.class public final Lddi;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lhas;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Lhas;

    invoke-direct {v0}, Lhas;-><init>()V

    iput-object v0, p0, Lddi;->b:Lhas;

    .line 27
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lddi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lddi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 50
    iget-object v0, p0, Lddi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 52
    const v1, 0x7f0300af

    invoke-static {p3, v1}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 53
    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    const v2, 0x7f0c01ae

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v2, p0, Lddi;->b:Lhas;

    invoke-static {v1, v2}, Ld;->f(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v1, Lerf;->b:Landroid/view/View;

    return-object v0
.end method
