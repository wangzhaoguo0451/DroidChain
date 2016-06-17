.class public final Lcuw;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field public synthetic b:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

.field private synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/installer/AppTaskManager;Lcom/wandoujia/ripple_framework/model/Model;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcuw;->b:Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iput-object p2, p0, Lcuw;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iput-object p3, p0, Lcuw;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcuw;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    :cond_0
    return-void
.end method
