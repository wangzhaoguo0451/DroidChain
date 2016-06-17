.class public final Lcvi;
.super Ljava/lang/Object;
.source "UnZipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcvk;

.field private synthetic b:I


# direct methods
.method public constructor <init>(Lcvk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcvi;->a:Lcvk;

    iput p2, p0, Lcvi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcvi;->a:Lcvk;

    iget v1, p0, Lcvi;->b:I

    iget-object v2, v0, Lcvk;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v0, v0, Lcvk;->a:Ljava/lang/String;

    iget-object v3, v2, Lcom/wandoujia/gamepacket/GamePacketInstaller;->g:Landroid/os/Handler;

    new-instance v4, Lcuu;

    invoke-direct {v4, v2, v0, v1}, Lcuu;-><init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
