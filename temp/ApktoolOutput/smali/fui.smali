.class final Lfui;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

.field private synthetic b:Lfue;


# direct methods
.method constructor <init>(Lfue;Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lfui;->b:Lfue;

    iput-object p2, p0, Lfui;->a:Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lfui;->b:Lfue;

    iget-object v0, v0, Lfue;->a:Lfua;

    invoke-static {v0}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 219
    iget-object v1, p0, Lfui;->a:Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->getCdkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    iget-object v0, p0, Lfui;->b:Lfue;

    iget-object v0, v0, Lfue;->a:Lfua;

    invoke-static {v0}, Lfua;->c(Lfua;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 223
    return-void
.end method
