.class public final Leyu;
.super Ljava/lang/Object;
.source "ALAppIconController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfan;",
        "Lfah;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfan;Lfah;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lfan;->a:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfan;->a:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v1, p1, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lfan;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfah;->c()Lcom/wandoujia/mvc/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfan;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Leyv;

    invoke-direct {v1, p1}, Leyv;-><init>(Lfah;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lfan;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Leyw;

    invoke-direct {v1, p1, p0}, Leyw;-><init>(Lfah;Lfan;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p1, Lfan;

    check-cast p2, Lfah;

    invoke-static {p1, p2}, Leyu;->a(Lfan;Lfah;)V

    return-void
.end method
