.class final Leyw;
.super Ljava/lang/Object;
.source "ALAppIconController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lfah;

.field private synthetic b:Lfan;


# direct methods
.method constructor <init>(Lfah;Lfan;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Leyw;->a:Lfah;

    iput-object p2, p0, Leyw;->b:Lfan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leyw;->a:Lfah;

    iget-object v1, v1, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Leyw;->a:Lfah;

    invoke-interface {v0}, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;->d()I

    move-result v0

    invoke-static {p1, v0}, Ld;->a(Landroid/view/View;I)V

    const-string v0, "commonapp"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "long_click_app"

    invoke-static {p1, v0, v1, v2, v3}, Lg;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 47
    new-instance v0, Legr;

    iget-object v1, p0, Leyw;->b:Lfan;

    invoke-virtual {v1}, Lfan;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Leyw;->a:Lfah;

    iget-object v2, v2, Lfah;->a:Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v2, v2, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Leyw;->a:Lfah;

    iget-object v3, v3, Lfah;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Legr;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "commonapp"

    iget-object v2, p0, Leyw;->a:Lfah;

    iget v2, v2, Lfah;->c:I

    invoke-virtual {v0, v1, v2}, Legr;->a(Ljava/lang/String;I)Legr;

    move-result-object v0

    invoke-virtual {v0}, Legr;->a()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
