.class public final Lhqr;
.super Landroid/os/Handler;
.source "RemoteUpdateService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    iget-object v2, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/update/aidl/IUpdateCallback;

    invoke-static {v2, v1}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/IUpdateCallback;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    .line 241
    iget-object v1, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/aidl/UpdateParams;

    invoke-static {v1, v0}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/UpdateParams;)Lcom/wandoujia/update/aidl/UpdateParams;

    .line 242
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    iget-object v1, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v1}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/update/aidl/UpdateParams;->updateDelayMs:J

    invoke-static {v0, v2, v3}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;J)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 248
    iget-object v2, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/aidl/UpdateParams;

    invoke-static {v2, v0}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/UpdateParams;)Lcom/wandoujia/update/aidl/UpdateParams;

    .line 249
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->d(Lcom/wandoujia/update/RemoteUpdateService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0, v3}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Z)Z

    .line 251
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->g(Lcom/wandoujia/update/RemoteUpdateService;)Lhqs;

    move-result-object v0

    iget-object v2, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v2}, Lcom/wandoujia/update/RemoteUpdateService;->j(Lcom/wandoujia/update/RemoteUpdateService;)Lhra;

    move-result-object v2

    iget-object v3, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v3}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    invoke-virtual {v0, v1, v2, v3}, Lhqs;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Lhra;Z)Z

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->g(Lcom/wandoujia/update/RemoteUpdateService;)Lhqs;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->INSTALL_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    sget-object v2, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->OK:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    invoke-virtual {v0, v1, v2, v4, v4}, Lhqs;->a(Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lhqr;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0, v4}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/IUpdateCallback;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
