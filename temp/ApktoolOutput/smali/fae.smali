.class final Lfae;
.super Landroid/os/Handler;
.source "ALManager.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    iget-object v2, v0, Lezz;->e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    if-nez v2, :cond_1

    new-instance v2, Lfaa;

    invoke-direct {v2, v0}, Lfaa;-><init>(Lezz;)V

    iput-object v2, v0, Lezz;->e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    :cond_1
    iget-object v2, v0, Lezz;->e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    const-string v2, "key_first_download_create_icon"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Legx;->f()Leen;

    move-result-object v1

    iget-object v2, v0, Lezz;->d:Leeq;

    if-nez v2, :cond_2

    new-instance v2, Lfab;

    invoke-direct {v2, v0}, Lfab;-><init>(Lezz;)V

    iput-object v2, v0, Lezz;->d:Leeq;

    :cond_2
    iget-object v0, v0, Lezz;->d:Leeq;

    invoke-interface {v1, v0}, Leen;->a(Leeq;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-static {}, Lezz;->a()Lezz;

    move-result-object v0

    invoke-static {}, Lezy;->a()Z

    move-result v1

    invoke-static {}, Lezy;->b()V

    if-eqz v1, :cond_0

    iget-object v1, v0, Lezz;->b:Landroid/os/Handler;

    new-instance v2, Lfac;

    invoke-direct {v2, v0}, Lfac;-><init>(Lezz;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
