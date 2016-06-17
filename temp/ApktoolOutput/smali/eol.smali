.class public abstract Leol;
.super Landroid/widget/BaseAdapter;
.source "CardShowAdapter.java"


# instance fields
.field public c:Leos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Leol;->c:Leos;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Leol;->c:Leos;

    invoke-interface {v0}, Leos;->a()V

    .line 44
    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Leol;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    invoke-static {}, Leny;->b()Leny;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Leny;->a(Landroid/view/View;I)Leny;

    .line 31
    iget-object v1, p0, Leol;->c:Leos;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Leol;->c:Leos;

    invoke-virtual {p0, p1}, Leol;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Leos;->a(Landroid/view/View;J)V

    .line 34
    :cond_0
    return-object v0
.end method
