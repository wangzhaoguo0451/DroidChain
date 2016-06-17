.class public final Lext;
.super Leee;
.source "ALAppGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leee",
        "<",
        "Lfah;",
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
    .line 31
    invoke-static {p2}, Lfan;->a(Landroid/view/ViewGroup;)Lfan;

    move-result-object v0

    iput-object v0, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    .line 32
    new-instance v0, Leyu;

    invoke-direct {v0}, Leyu;-><init>()V

    iput-object v0, p3, Leef;->c:Lcom/wandoujia/mvc/BaseController;

    .line 33
    invoke-virtual {p0, p1}, Lext;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {p3, v0}, Leef;->a(Lcom/wandoujia/mvc/BaseModel;)V

    .line 34
    iget-object v0, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v0}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    .line 24
    new-instance v5, Lfah;

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v5, v0, v1}, Lfah;-><init>(Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v3}, Lext;->a(Ljava/util/List;)V

    .line 27
    return-void
.end method
