.class public final Lexu;
.super Leee;
.source "ALFunctionGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leee",
        "<",
        "Lfai;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Leee;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/ViewGroup;Leef;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p2}, Lfan;->b(Landroid/view/ViewGroup;)Lfan;

    move-result-object v0

    iput-object v0, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    .line 33
    new-instance v0, Leyy;

    invoke-direct {v0}, Leyy;-><init>()V

    iput-object v0, p3, Leef;->c:Lcom/wandoujia/mvc/BaseController;

    .line 34
    invoke-virtual {p0, p1}, Lexu;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {p3, v0}, Leef;->a(Lcom/wandoujia/mvc/BaseModel;)V

    .line 35
    iget-object v0, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v0}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
