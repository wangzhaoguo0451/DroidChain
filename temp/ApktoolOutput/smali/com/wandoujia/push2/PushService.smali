.class public Lcom/wandoujia/push2/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lgzu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/push2/PushService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Lhab;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhab;-><init>(Lcom/wandoujia/push2/PushService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/push2/PushService;->c:Landroid/os/Handler;

    .line 395
    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/wandoujia/push2/protocol/Message;
    .locals 12
    .parameter

    .prologue
    const/4 v1, -0x1

    const-wide/16 v10, 0x0

    .line 368
    const-string v0, "id"

    invoke-virtual {p0, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 370
    const-string v0, "protocol"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 371
    const-string v0, "expired"

    invoke-virtual {p0, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 372
    const-string v0, "msg"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 374
    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    if-eq v6, v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 381
    :goto_0
    return-object v1

    .line 378
    :cond_1
    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x240c8400

    add-long/2addr v4, v0

    .line 381
    :cond_2
    new-instance v1, Lcom/wandoujia/push2/protocol/Message;

    invoke-direct/range {v1 .. v8}, Lcom/wandoujia/push2/protocol/Message;-><init>(JJILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(J)Lcom/wandoujia/push2/protocol/proto/Upload;
    .locals 4
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;

    invoke-direct {v0}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;-><init>()V

    new-instance v1, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;

    invoke-direct {v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->ack(Lcom/wandoujia/push2/protocol/proto/Upload$Ack;)Lcom/wandoujia/push2/protocol/proto/Upload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;J)Lcom/wandoujia/push2/protocol/proto/Upload;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;

    invoke-direct {v0}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;-><init>()V

    new-instance v1, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;

    invoke-direct {v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;-><init>()V

    iput-object p0, v1, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->udid:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->lastId:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->req(Lcom/wandoujia/push2/protocol/proto/Upload$Req;)Lcom/wandoujia/push2/protocol/proto/Upload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->build()Lcom/wandoujia/push2/protocol/proto/Upload;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/wandoujia/push2/PushService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/wandoujia/push2/PushService;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/wandoujia/push2/PushService;->a:Ljava/lang/String;

    const-string v1, "connect push server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-object v0, v0, Lgzu;->b:Lgzy;

    iget-object v0, v0, Lgzy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhac;

    invoke-direct {v2, p0, v0, p1, p2}, Lhac;-><init>(Lcom/wandoujia/push2/PushService;Ljava/lang/String;J)V

    const-string v0, "PUSH2_THREAD"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/push2/PushService;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/wandoujia/push2/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgzq;

    invoke-direct {v2}, Lgzq;-><init>()V

    const-string v3, "pkg"

    invoke-virtual {v2, v3, v1}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    if-nez v0, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    :goto_0
    const-string v1, "push2_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "push2_id"

    invoke-virtual {v2, v3, v1}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    :goto_1
    const-string v1, "push2_title"

    const-string v3, "push2_title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lgzq;->a(Ljava/lang/String;Ljava/lang/String;)Lgzq;

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->DELIVER_TO_APP:Lcom/wandoujia/push2/LogHelper$Action;

    invoke-static {v1, v0, v2}, Ld;->a(Lcom/wandoujia/push2/LogHelper$Action;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lgzq;)V

    return-void

    :cond_0
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/wandoujia/push2/PushService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message body has no id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "msg"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/push2/PushService;Lcom/wandoujia/push2/protocol/proto/Download$Msg;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/push2/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    invoke-virtual {v2}, Lcom/squareup/wire/ByteString;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    :try_start_1
    const-class v3, Lcom/wandoujia/push2/protocol/Message;

    invoke-virtual {v2, v0, v3}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getApps()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getApps()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getApps()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.wandoujia.push2.RECEIVE_PUSH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/wandoujia/push2/PushService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "id"

    iget-object v4, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "msg"

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "protocol"

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getBodyProtocol()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "expired"

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getExpired()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "channel"

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getChannel()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getBody()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wandoujia/push2/PushService$MessageBodyBase;

    invoke-virtual {v2, v0, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/PushService$MessageBodyBase;

    if-eqz v0, :cond_1

    const-string v1, "push2_id"

    iget-object v2, v0, Lcom/wandoujia/push2/PushService$MessageBodyBase;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "push2_title"

    iget-object v0, v0, Lcom/wandoujia/push2/PushService$MessageBodyBase;->title:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/push2/PushService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wandoujia/push2/PushService;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic a(Ljava/io/DataOutputStream;Lcom/squareup/wire/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/push2/PushService;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/wandoujia/push2/PushService;->b:Z

    return v0
.end method

.method public static synthetic b()Landroid/util/Pair;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/wandoujia/push2/PushService;->d()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/push2/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wandoujia/push2/PushService;->c()V

    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/push2/PushService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "PUSH2_ALARM_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x2000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 130
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/wandoujia/push2/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/wandoujia/push2/PushService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v3, "PUSH2_ALARM_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 135
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 141
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.wandoujia.push2.ARE_YOU_PUSH_CENTER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v3, Lcom/wandoujia/push2/PushService$2;

    invoke-direct {v3, p0}, Lcom/wandoujia/push2/PushService$2;-><init>(Lcom/wandoujia/push2/PushService;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, v8

    move-object v4, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/wandoujia/push2/PushService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 155
    return-void

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method static synthetic c(Lcom/wandoujia/push2/PushService;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/push2/PushService;->b:Z

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/push2/PushService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/push2/PushService;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private static d()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 318
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 319
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 322
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "https://push.wandoujia.com/servers"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 323
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lcom/wandoujia/base/utils/IOUtils;->readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    const-class v4, Lcom/wandoujia/push2/PushService$PushServerList;

    invoke-virtual {v0, v3, v4}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/PushService$PushServerList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 335
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wandoujia/push2/PushService$PushServerList;->servers:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wandoujia/push2/PushService$PushServerList;->servers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 346
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 326
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v0, v1

    .line 332
    goto :goto_1

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 332
    :goto_3
    throw v0

    .line 339
    :cond_1
    iget-object v2, v0, Lcom/wandoujia/push2/PushService$PushServerList;->servers:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iget-object v0, v0, Lcom/wandoujia/push2/PushService$PushServerList;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v0, v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 343
    array-length v0, v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move-object v0, v1

    .line 344
    goto :goto_1

    .line 346
    :cond_2
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 332
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v3

    iget-boolean v3, v3, Lgzu;->a:Z

    if-nez v3, :cond_2

    .line 96
    const-string v1, "com.wandoujia.push2.RECEIVE_PUSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lcom/wandoujia/push2/PushService;->a(Landroid/content/Intent;)Lcom/wandoujia/push2/protocol/Message;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lhad;

    invoke-direct {v1, p0}, Lhad;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Ld;->a(Landroid/content/Context;J)V

    .line 101
    invoke-virtual {v1, v0}, Lhad;->a(Lcom/wandoujia/push2/protocol/Message;)V

    .line 104
    :cond_0
    const/4 v0, 0x2

    .line 120
    :goto_1
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_2
    const-string v3, "com.wandoujia.push2.RECEIVE_PUSH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    invoke-static {p1}, Lcom/wandoujia/push2/PushService;->a(Landroid/content/Intent;)Lcom/wandoujia/push2/protocol/Message;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v4

    invoke-static {}, Lgzu;->b()V

    iget-object v0, v4, Lgzu;->d:Landroid/content/Context;

    invoke-static {v0}, Ld;->v(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4

    const-string v0, "PushClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "message ignore: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    move v0, v1

    .line 120
    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getChannel()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getChannel()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_3
    if-ge v0, v6, :cond_c

    aget-object v7, v5, v0

    iget-object v8, v4, Lgzu;->b:Lgzy;

    iget-object v8, v8, Lgzy;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "all"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v0, v1

    :goto_4
    if-nez v0, :cond_7

    const-string v0, "PushClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "message channel not match: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getChannel()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, v4, Lgzu;->d:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Ld;->a(Landroid/content/Context;J)V

    iget-object v0, v4, Lgzu;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getBodyProtocol()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzz;

    if-nez v0, :cond_8

    const-string v0, "PushClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no processor for type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/wandoujia/push2/protocol/Message;->getBodyProtocol()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lgzu;->c:Lhad;

    invoke-virtual {v0, v3}, Lhad;->a(Lcom/wandoujia/push2/protocol/Message;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4, v0, v3}, Lgzu;->a(Lgzz;Lcom/wandoujia/push2/protocol/Message;)V

    goto/16 :goto_2

    .line 112
    :cond_9
    const-string v3, "PUSH2_ALARM_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    invoke-static {}, Lgzu;->b()V

    iget-boolean v3, v0, Lgzu;->a:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Lgzu;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lgzx;

    invoke-direct {v3, v0, v2}, Lgzx;-><init>(Lgzu;B)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-static {v3, v0}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 114
    :cond_a
    invoke-direct {p0}, Lcom/wandoujia/push2/PushService;->c()V

    goto/16 :goto_2

    .line 116
    :cond_b
    iput-boolean v1, p0, Lcom/wandoujia/push2/PushService;->b:Z

    .line 117
    invoke-direct {p0}, Lcom/wandoujia/push2/PushService;->c()V

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_4
.end method
