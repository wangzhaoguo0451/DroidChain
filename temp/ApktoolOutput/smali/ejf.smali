.class public final Lejf;
.super Ljava/lang/Object;
.source "DataPacketDialog.java"


# instance fields
.field private synthetic a:Lefe;


# direct methods
.method public constructor <init>(Lefe;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lejf;->a:Lefe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lejf;->a:Lefe;

    invoke-static {v0, p1}, Lefe;->a(Lefe;Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lejf;->a:Lefe;

    invoke-static {v0}, Lefe;->d(Lefe;)V

    goto :goto_0
.end method
