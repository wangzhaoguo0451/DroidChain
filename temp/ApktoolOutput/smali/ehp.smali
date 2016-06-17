.class public final Lehp;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"


# instance fields
.field public synthetic a:Lefe;


# direct methods
.method public constructor <init>(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lehp;->a:Lefe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->game_packet_not_available:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    return-void
.end method
