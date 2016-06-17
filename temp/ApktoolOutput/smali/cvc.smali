.class public final Lcvc;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcvb;


# direct methods
.method public constructor <init>(Lcvb;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcvc;->a:Lcvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcvc;->a:Lcvb;

    iget-object v0, v0, Lcvb;->c:Lcve;

    iget-object v1, p0, Lcvc;->a:Lcvb;

    iget-object v1, v1, Lcvb;->d:Lcvf;

    iget v2, v1, Lcvf;->a:I

    invoke-virtual {v1, v2}, Lcvf;->a(I)Lcom/wandoujia/api/proto/ExtensionPack;

    move-result-object v1

    iget-object v2, v0, Lcve;->d:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v3, v0, Lcve;->a:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v3, v3, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iget-object v4, v0, Lcve;->b:Landroid/app/Activity;

    iget-object v0, v0, Lcve;->c:Lcuw;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/wandoujia/gamepacket/GamePacketInstaller;->a(Ljava/lang/String;Landroid/content/Context;Lcom/wandoujia/api/proto/ExtensionPack;Lcuw;)V

    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    return-void
.end method
