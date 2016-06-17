.class public final Lcfg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:I

.field public b:Lcfo;

.field public c:Lcfo;

.field public d:Lcfq;

.field public e:Lcfo;

.field public f:Lcfv;

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcft;

.field private m:Lcom/unionpay/pboctransaction/b;

.field private n:Lcom/unionpay/pboctransaction/b;

.field private o:Lcom/unionpay/pboctransaction/b;

.field private p:Lcom/unionpay/pboc/engine/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/pboc/engine/a;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcfg;->a:I

    iput-object v1, p0, Lcfg;->g:Landroid/os/Handler;

    iput-object v1, p0, Lcfg;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcfg;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Lcfg;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcfg;->k:Ljava/util/ArrayList;

    iput-object v1, p0, Lcfg;->b:Lcfo;

    iput-object v1, p0, Lcfg;->l:Lcft;

    new-instance v0, Lcfh;

    invoke-direct {v0, p0}, Lcfh;-><init>(Lcfg;)V

    iput-object v0, p0, Lcfg;->m:Lcom/unionpay/pboctransaction/b;

    iput-object v1, p0, Lcfg;->c:Lcfo;

    iput-object v1, p0, Lcfg;->d:Lcfq;

    new-instance v0, Lcfi;

    invoke-direct {v0, p0}, Lcfi;-><init>(Lcfg;)V

    iput-object v0, p0, Lcfg;->n:Lcom/unionpay/pboctransaction/b;

    iput-object v1, p0, Lcfg;->e:Lcfo;

    iput-object v1, p0, Lcfg;->f:Lcfv;

    new-instance v0, Lcfj;

    invoke-direct {v0, p0}, Lcfj;-><init>(Lcfg;)V

    iput-object v0, p0, Lcfg;->o:Lcom/unionpay/pboctransaction/b;

    iput-object v1, p0, Lcfg;->p:Lcom/unionpay/pboc/engine/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcfg;->g:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcfg;->h:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/uppay/PayActivityEx;

    const-class v1, Lcom/unionpay/mpay/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivityEx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/pboctransaction/d;

    new-instance v1, Lcft;

    invoke-direct {v1}, Lcft;-><init>()V

    iput-object v1, p0, Lcfg;->l:Lcft;

    new-instance v1, Lcfo;

    iget-object v2, p0, Lcfg;->l:Lcft;

    invoke-direct {v1, v2, v0}, Lcfo;-><init>(Lcom/unionpay/pboctransaction/c;Lcom/unionpay/pboctransaction/d;)V

    iput-object v1, p0, Lcfg;->b:Lcfo;

    iget-object v1, p0, Lcfg;->m:Lcom/unionpay/pboctransaction/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/unionpay/pboctransaction/b;->a()V

    :cond_0
    new-instance v1, Lcfq;

    invoke-direct {v1, p3}, Lcfq;-><init>(Z)V

    iput-object v1, p0, Lcfg;->d:Lcfq;

    new-instance v1, Lcfo;

    iget-object v2, p0, Lcfg;->d:Lcfq;

    invoke-direct {v1, v2, v0}, Lcfo;-><init>(Lcom/unionpay/pboctransaction/c;Lcom/unionpay/pboctransaction/d;)V

    iput-object v1, p0, Lcfg;->c:Lcfo;

    iget-object v1, p0, Lcfg;->d:Lcfq;

    iget-object v2, p0, Lcfg;->n:Lcom/unionpay/pboctransaction/b;

    iput-object v2, v1, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    iput-object p1, v1, Lcfq;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.unionpay.mobile.tsm.PBOCService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v3, v1, Lcfq;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    invoke-interface {v1}, Lcom/unionpay/pboctransaction/b;->b()V

    :cond_1
    invoke-static {}, Lcfv;->d()Lcfv;

    move-result-object v1

    iput-object v1, p0, Lcfg;->f:Lcfv;

    new-instance v1, Lcfo;

    iget-object v2, p0, Lcfg;->f:Lcfv;

    invoke-direct {v1, v2, v0}, Lcfo;-><init>(Lcom/unionpay/pboctransaction/c;Lcom/unionpay/pboctransaction/d;)V

    iput-object v1, p0, Lcfg;->e:Lcfo;

    iget-object v0, p0, Lcfg;->f:Lcfv;

    iget-object v1, p0, Lcfg;->o:Lcom/unionpay/pboctransaction/b;

    iput-object v1, v0, Lcfv;->b:Lcom/unionpay/pboctransaction/b;

    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v1, p1, v0}, Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V

    iput-object v1, v0, Lcfv;->a:Lorg/simalliance/openmobileapi/SEService;

    new-instance v1, Lcfx;

    invoke-direct {v1, v0}, Lcfx;-><init>(Lcfv;)V

    invoke-virtual {v1}, Lcfx;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lcfg;->p:Lcom/unionpay/pboc/engine/a;

    return-void

    :catch_0
    move-exception v1

    iget-object v0, v0, Lcfv;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcfg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcfg;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcfg;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcfk;

    invoke-direct {v1, p0}, Lcfk;-><init>(Lcfg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcfl;

    invoke-direct {v1, p0}, Lcfl;-><init>(Lcfg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcfm;

    invoke-direct {v1, p0}, Lcfm;-><init>(Lcfg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcfg;)Lcfo;
    .locals 1

    iget-object v0, p0, Lcfg;->b:Lcfo;

    return-object v0
.end method

.method static synthetic c(Lcfg;)Lcfo;
    .locals 1

    iget-object v0, p0, Lcfg;->c:Lcfo;

    return-object v0
.end method

.method static synthetic d(Lcfg;)Lcfo;
    .locals 1

    iget-object v0, p0, Lcfg;->e:Lcfo;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " msg.what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget v0, p0, Lcfg;->a:I

    iget v1, p1, Landroid/os/Message;->what:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcfg;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mTag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcfg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcfg;->i:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    iget v0, p0, Lcfg;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcfg;->p:Lcom/unionpay/pboc/engine/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcfg;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcfg;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcfg;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcfg;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcfg;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcfg;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcfg;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcfg;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcfg;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcfg;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcfg;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcfg;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v0, p0, Lcfg;->p:Lcom/unionpay/pboc/engine/a;

    iget-object v1, p0, Lcfg;->h:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/unionpay/pboc/engine/a;->a(Ljava/util/ArrayList;)V

    :cond_5
    return v2

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcfg;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcfg;->k:Ljava/util/ArrayList;

    goto :goto_0
.end method
