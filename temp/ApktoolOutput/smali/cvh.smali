.class public final Lcvh;
.super Ljava/lang/Object;
.source "UnZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcvk;

.field private synthetic b:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;


# direct methods
.method public constructor <init>(Lcvk;Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcvh;->a:Lcvk;

    iput-object p2, p0, Lcvh;->b:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcvh;->a:Lcvk;

    iget-object v1, p0, Lcvh;->b:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    sget-object v2, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->UNZIPPING:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcvk;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcvk;->a:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;->INSTALLING:Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/gamepacket/GamePacketInstaller$InstallStatus;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;->FAILED_INSUFFICIENT_STORAGE:Lcom/wandoujia/gamepacket/UnZipManager$UnZipStatus;

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/gamepacket/R$string;->unzipping_failed_insufficient_storage:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
