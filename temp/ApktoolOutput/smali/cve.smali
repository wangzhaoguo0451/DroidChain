.class public final Lcve;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"


# instance fields
.field synthetic a:Lcom/wandoujia/api/proto/AppDetail;

.field synthetic b:Landroid/app/Activity;

.field synthetic c:Lcuw;

.field synthetic d:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Lcom/wandoujia/api/proto/AppDetail;Landroid/app/Activity;Lcuw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcve;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcve;->a:Lcom/wandoujia/api/proto/AppDetail;

    iput-object p3, p0, Lcve;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcve;->c:Lcuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
