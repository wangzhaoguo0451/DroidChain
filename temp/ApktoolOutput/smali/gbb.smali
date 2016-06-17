.class public final Lgbb;
.super Lhhl;
.source "FollowUsTipsTransparentActivity.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lgbb;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lgbb;->a:Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/settings/FollowUsTipsTransparentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 75
    const-string v1, "wandoulabs"

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lgbc;

    invoke-direct {v1, p0}, Lgbc;-><init>(Lgbb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method
