.class final Laen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laen;->a:Lael;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v1, p0, Laen;->a:Lael;

    iget-object v0, p0, Laen;->a:Lael;

    invoke-static {v0}, Lael;->b(Lael;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lael;->a(Lael;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Laen;->a:Lael;

    iget-object v1, p0, Laen;->a:Lael;

    .line 101
    new-instance v2, Ladu;

    iget-object v3, p0, Laen;->a:Lael;

    iget-object v3, v3, Laez;->l:Lafc;

    invoke-static {v3}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v3

    invoke-direct {v2, v3}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 100
    invoke-virtual {v0, v1, v2}, Lael;->a(Ljava/lang/Object;Ladu;)V

    .line 102
    return-void
.end method
