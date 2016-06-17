.class public final Lcom/wandoujia/p4/netcheck/controller/NetCheckController;
.super Ljava/lang/Object;
.source "NetCheckController.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

.field public final d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

.field public e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfzw;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    .line 63
    new-instance v0, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-direct {v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    .line 431
    new-instance v0, Lfzv;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfzv;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->g:Landroid/os/Handler;

    .line 438
    return-void
.end method

.method public static a()Lcom/wandoujia/p4/netcheck/model/Configs;
    .locals 3

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Lfzy;

    invoke-direct {v2}, Lfzy;-><init>()V

    .line 82
    invoke-virtual {v2}, Lfzy;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgap;

    iput-object v1, v0, Lgap;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/netcheck/model/Configs;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    new-instance v4, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    invoke-direct {v4}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;-><init>()V

    .line 164
    invoke-virtual {v4, p0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setValue(Ljava/lang/String;)V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ping -c 10 -i 0.5 -w 10 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v3

    .line 171
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_b

    .line 172
    :try_start_2
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_c

    .line 174
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_1
    :try_start_4
    const-string v3, "failed"

    invoke-virtual {v4, v3}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 190
    if-eqz v1, :cond_0

    .line 191
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 198
    :try_start_6
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 201
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 207
    :cond_2
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V

    .line 208
    return-object v4

    .line 178
    :cond_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    const-string v1, "success"

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 190
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 194
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 201
    :goto_7
    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 182
    :cond_4
    :try_start_a
    const-string v1, "failed"

    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 187
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_8
    :try_start_b
    const-string v0, "failed"

    invoke-virtual {v4, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 190
    if-eqz v2, :cond_5

    .line 191
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 194
    :cond_5
    :goto_9
    if-eqz v1, :cond_6

    .line 198
    :try_start_d
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 201
    :cond_6
    :goto_a
    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 189
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 190
    :goto_b
    if-eqz v2, :cond_7

    .line 191
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 194
    :cond_7
    :goto_c
    if-eqz v1, :cond_8

    .line 198
    :try_start_f
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 201
    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    .line 204
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_9
    throw v0

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v2

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_d

    .line 189
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_b

    :catchall_4
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_b

    .line 187
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_8

    .line 185
    :catch_d
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_1

    :catch_e
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_1

    :catch_f
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static a(Lcom/wandoujia/p4/netcheck/model/Configs$Publics;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/netcheck/model/Configs$Publics;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/wandoujia/p4/netcheck/model/Configs$Publics;->getUrls()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    new-instance v5, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    invoke-direct {v5}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;-><init>()V

    .line 107
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setValue(Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 110
    new-instance v6, Lgad;

    invoke-direct {v6}, Lgad;-><init>()V

    .line 111
    invoke-virtual {v6}, Lgad;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v1

    check-cast v1, Lgaq;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lgaq;->a:Ljava/lang/String;

    .line 112
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-virtual {v5, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "success"

    invoke-virtual {v5, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    :try_start_1
    const-string v0, "failed"

    invoke-virtual {v5, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    const-string v0, "failed"

    invoke-virtual {v5, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_2
    return-object v3
.end method

.method public static a(Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;->getDomains()Ljava/util/List;

    move-result-object v5

    .line 131
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    new-instance v7, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    invoke-direct {v7}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;-><init>()V

    .line 135
    invoke-virtual {v7, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setValue(Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 138
    :try_start_1
    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v8, 0x50

    invoke-direct {v2, v0, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 139
    const/16 v0, 0x2710

    invoke-virtual {v1, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 140
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "success"

    invoke-virtual {v7, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 156
    :cond_0
    :goto_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 157
    goto :goto_1

    .line 143
    :cond_1
    :try_start_3
    const-string v0, "timeout"

    invoke-virtual {v7, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 146
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    :try_start_4
    const-string v1, "failed"

    invoke-virtual {v7, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    if-eqz v0, :cond_0

    .line 150
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 153
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    :goto_5
    if-eqz v1, :cond_2

    .line 150
    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    :cond_2
    :goto_6
    throw v0

    .line 131
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_6

    .line 159
    :cond_4
    return-object v4

    .line 148
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 146
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_4
.end method

.method public static b()Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;
    .locals 3

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lgaa;

    invoke-direct {v0}, Lgaa;-><init>()V

    .line 93
    new-instance v1, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;-><init>()V

    .line 94
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;->setDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;
    .locals 19
    .parameter

    .prologue
    .line 213
    new-instance v6, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    invoke-direct {v6}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;-><init>()V

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setValue(Ljava/lang/String;)V

    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v3, 0x0

    .line 218
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    :goto_0
    new-instance v2, Lgac;

    invoke-direct {v2}, Lgac;-><init>()V

    .line 222
    move-object/from16 v0, p0

    iput-object v0, v2, Lgac;->b:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v7

    invoke-virtual {v7, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpResponse;

    .line 225
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 226
    const/16 v10, 0x12e

    if-ne v7, v10, :cond_2

    .line 227
    new-instance v7, Ljava/net/URI;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/net/URI;

    const-string v11, "Location"

    invoke-interface {v2, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 259
    :goto_1
    :try_start_1
    const-string v5, "failed"

    invoke-virtual {v6, v5}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 269
    if-eqz v3, :cond_0

    .line 270
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 273
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 277
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 283
    :cond_1
    :goto_3
    return-object v6

    .line 232
    :cond_2
    const/16 v10, 0xc8

    if-lt v7, v10, :cond_a

    const/16 v10, 0x12c

    if-ge v7, v10, :cond_a

    .line 233
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setValue(Ljava/lang/String;)V

    .line 234
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 235
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_4

    .line 236
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_d

    move-result-object v3

    .line 237
    :try_start_6
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    .line 238
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_4

    .line 239
    if-eqz v3, :cond_4

    .line 242
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/wandoujia/base/utils/IOUtils;->write(Ljava/io/InputStream;ZLjava/io/OutputStream;Z)V

    .line 245
    const-string v2, "success"

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v14, v2

    cmp-long v2, v14, v12

    if-eqz v2, :cond_3

    .line 247
    const-string v2, "failed"

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    .line 248
    const-string v2, "Size mismatch"

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V

    .line 250
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 251
    sub-long v10, v14, v10

    long-to-double v10, v10

    const-wide v16, 0x408f400000000000L

    div-double v10, v10, v16

    .line 252
    const-wide/16 v16, 0x400

    div-long v12, v12, v16

    long-to-double v12, v12

    div-double v10, v12, v10

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v8, v14, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_e

    .line 254
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 270
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 273
    :cond_5
    :goto_5
    if-eqz v3, :cond_1

    .line 277
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 280
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 261
    :catch_2
    move-exception v2

    .line 262
    :goto_6
    :try_start_9
    const-string v4, "failed"

    invoke-virtual {v6, v4}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 269
    if-eqz v3, :cond_6

    .line 270
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 273
    :cond_6
    :goto_7
    if-eqz v5, :cond_1

    .line 277
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 280
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 264
    :catch_4
    move-exception v2

    .line 265
    :goto_8
    :try_start_c
    const-string v4, "failed"

    invoke-virtual {v6, v4}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setResult(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;->setInfo(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 269
    if-eqz v3, :cond_7

    .line 270
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 273
    :cond_7
    :goto_9
    if-eqz v5, :cond_1

    .line 277
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .line 280
    :catch_5
    move-exception v2

    goto/16 :goto_3

    .line 268
    :catchall_0
    move-exception v2

    .line 269
    :goto_a
    if-eqz v3, :cond_8

    .line 270
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 273
    :cond_8
    :goto_b
    if-eqz v5, :cond_9

    .line 277
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 280
    :cond_9
    :goto_c
    throw v2

    :catch_6
    move-exception v2

    goto :goto_5

    :catch_7
    move-exception v2

    goto/16 :goto_2

    :catch_8
    move-exception v2

    goto/16 :goto_3

    :catch_9
    move-exception v2

    goto :goto_7

    :catch_a
    move-exception v2

    goto :goto_9

    :catch_b
    move-exception v3

    goto :goto_b

    :catch_c
    move-exception v3

    goto :goto_c

    .line 268
    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_a

    :catchall_2
    move-exception v2

    move-object v5, v3

    move-object v3, v4

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object v5, v4

    goto :goto_a

    .line 264
    :catch_d
    move-exception v2

    move-object v3, v4

    goto :goto_8

    :catch_e
    move-exception v2

    move-object v5, v3

    move-object v3, v4

    goto :goto_8

    .line 261
    :catch_f
    move-exception v2

    move-object v3, v4

    goto :goto_6

    :catch_10
    move-exception v2

    move-object v5, v3

    move-object v3, v4

    goto :goto_6

    .line 258
    :catch_11
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    :catch_12
    move-exception v2

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :cond_a
    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V
    .locals 4
    .parameter

    .prologue
    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzw;

    .line 408
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 411
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 414
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lfzu;

    invoke-direct {v2, v1, p1}, Lfzu;-><init>(Ljava/util/List;Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WIFI"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setNetwork(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setDatetime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getAvailableExternalStorage()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getTotalExternalMemorySize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setSpace(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setUdid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->setCommon(Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;)V

    .line 366
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 367
    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    invoke-virtual {v0, v2}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v2, Lgaf;

    invoke-direct {v2}, Lgaf;-><init>()V

    .line 369
    iget-object v3, p0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-virtual {v3}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->getUdid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgaf;->b:Ljava/lang/String;

    iput-object v0, v2, Lgaf;->c:Ljava/lang/String;

    .line 370
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 371
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 373
    :goto_1
    return v0

    .line 365
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2G/3G"

    goto/16 :goto_0

    :cond_2
    const-string v0, "NO_NETWORK"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 371
    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
