.class final Leyv;
.super Ljava/lang/Object;
.source "ALAppIconController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfah;


# direct methods
.method constructor <init>(Lfah;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Leyv;->a:Lfah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Leyv;->a:Lfah;

    invoke-virtual {v0}, Lfah;->c()Lcom/wandoujia/mvc/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 38
    iget-object v1, p0, Leyv;->a:Lfah;

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_redesign_al"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "commonapp"

    invoke-interface {v1}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->a()Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;->Function:Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    if-ne v2, v3, :cond_0

    const-string v0, "commonfunction"

    :cond_0
    invoke-interface {v1}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->d()I

    move-result v2

    invoke-static {p1, v2}, Ld;->a(Landroid/view/View;I)V

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-interface {v1}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v3, v1}, Lg;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p1, v1}, Lfam;->a(Landroid/view/View;Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;)V

    goto :goto_0
.end method
