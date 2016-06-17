.class public final Lcup;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/api/proto/ExtensionPack;

.field private synthetic c:Lcuw;

.field private synthetic d:Lcom/wandoujia/gamepacket/GamePacketInstaller;


# direct methods
.method public constructor <init>(Lcom/wandoujia/gamepacket/GamePacketInstaller;Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcup;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iput-object p2, p0, Lcup;->a:Ljava/lang/String;

    iput-object p3, p0, Lcup;->b:Lcom/wandoujia/api/proto/ExtensionPack;

    iput-object p4, p0, Lcup;->c:Lcuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcup;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, p0, Lcup;->a:Ljava/lang/String;

    iget-object v2, p0, Lcup;->b:Lcom/wandoujia/api/proto/ExtensionPack;

    iget-object v3, p0, Lcup;->c:Lcuw;

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    return-void
.end method
