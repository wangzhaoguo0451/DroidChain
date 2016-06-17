.class public final Lebb;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"


# static fields
.field private static b:Lebb;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lebj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Lebi;

.field private final g:Ldyg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldyg",
            "<",
            "Lcom/wandoujia/launcher/gift/http/model/GiftModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lebb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lebd;

    invoke-direct {v0, p0}, Lebd;-><init>(Lebb;)V

    iput-object v0, p0, Lebb;->g:Ldyg;

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lebb;->e:Landroid/os/Handler;

    .line 222
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lebb;->d:Lgdw;

    .line 223
    new-instance v0, Lebi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lebi;-><init>(B)V

    iput-object v0, p0, Lebb;->f:Lebi;

    .line 224
    new-instance v0, Lebf;

    invoke-direct {v0, p0}, Lebf;-><init>(Lebb;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public static declared-synchronized a()Lebb;
    .locals 2

    .prologue
    .line 295
    const-class v1, Lebb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lebb;->b:Lebb;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lebb;

    invoke-direct {v0}, Lebb;-><init>()V

    sput-object v0, Lebb;->b:Lebb;

    .line 298
    :cond_0
    sget-object v0, Lebb;->b:Lebb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lebb;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lebb;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lebb;->a:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lebb;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lg;->a(I)V

    iget-object v0, p0, Lebb;->e:Landroid/os/Handler;

    new-instance v1, Lebc;

    invoke-direct {v1, p0}, Lebc;-><init>(Lebb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lebb;)Lgdw;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lebb;->d:Lgdw;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 304
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lebb;)Lebi;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lebb;->f:Lebi;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lebb;->e()V

    return-void
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lebb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static e()V
    .locals 2

    .prologue
    .line 79
    sget-object v1, Lebb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 80
    :goto_0
    :try_start_0
    sget-object v0, Lebb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_1
    sget-object v0, Lebb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0

    .line 87
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lebj;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebb;->d:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 322
    invoke-static {}, Lebb;->e()V

    .line 323
    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 327
    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v2, v3, :cond_0

    .line 328
    sget-object v1, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->READ:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->setStatus(Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;)V

    .line 334
    :cond_1
    new-instance v0, Lebg;

    invoke-direct {v0, p0}, Lebg;-><init>(Lebb;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 341
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ldym;

    invoke-static {p1}, Lebb;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldym;-><init>(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lebb;->g:Ldyg;

    invoke-virtual {v0, v1}, Ldym;->a(Ldyg;)V

    .line 319
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 350
    .line 351
    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lebb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 353
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    move v3, v1

    .line 354
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 355
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v1

    sget-object v4, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v1, v4, :cond_0

    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 354
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 361
    :cond_2
    return v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lebb;->a:Ljava/util/Map;

    .line 390
    invoke-static {}, Lg;->h()I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {}, Ledn;->b()V

    .line 393
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lg;->a(I)V

    .line 394
    new-instance v0, Lebh;

    invoke-direct {v0}, Lebh;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method
