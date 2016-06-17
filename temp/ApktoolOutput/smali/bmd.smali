.class public Lbmd;
.super Ljava/lang/Object;


# static fields
.field private static e:Lbmd;


# instance fields
.field final a:Lbmz;

.field private final b:Landroid/content/Context;

.field private final c:Lblw;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lvp;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lblw;Lbmz;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbmd;->b:Landroid/content/Context;

    iput-object p3, p0, Lbmd;->a:Lbmz;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbmd;->d:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Lbmd;->c:Lblw;

    iget-object v0, p0, Lbmd;->c:Lblw;

    new-instance v1, Lbme;

    invoke-direct {v1, p0}, Lbme;-><init>(Lbmd;)V

    invoke-virtual {v0, v1}, Lblw;->a(Lblz;)V

    iget-object v0, p0, Lbmd;->c:Lblw;

    new-instance v1, Lbnd;

    iget-object v2, p0, Lbmd;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lbnd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lblw;->a(Lblz;)V

    new-instance v0, Lbng;

    invoke-direct {v0}, Lbng;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbmd;->b:Landroid/content/Context;

    new-instance v1, Lbmf;

    invoke-direct {v1, p0}, Lbmf;-><init>(Lbmd;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbmd;
    .locals 4

    const-class v1, Lbmd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbmd;->e:Lbmd;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    invoke-static {}, Lbml;->a()V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lbmh;

    invoke-direct {v0}, Lbmh;-><init>()V

    new-instance v0, Lbnh;

    invoke-direct {v0, p0}, Lbnh;-><init>(Landroid/content/Context;)V

    new-instance v2, Lbmd;

    new-instance v3, Lblw;

    invoke-direct {v3, v0}, Lblw;-><init>(Lbma;)V

    invoke-static {}, Lbna;->c()Lbna;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0}, Lbmd;-><init>(Landroid/content/Context;Lblw;Lbmz;)V

    sput-object v2, Lbmd;->e:Lbmd;

    :cond_1
    sget-object v0, Lbmd;->e:Lbmd;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static synthetic a(Lbmd;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbmd;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    invoke-virtual {v0, p1}, Lvp;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->a()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/zzcb;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/tagmanager/zzcb;->b:Ljava/lang/String;

    sget-object v0, Lbmg;->a:[I

    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzcb;->a:Lcom/google/android/gms/tagmanager/zzcb$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzcb$zza;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lbmd;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    const/4 v3, 0x0

    iget-object v3, v3, Laf;->F:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lvp;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lbmd;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    const/4 v4, 0x0

    iget-object v4, v4, Laf;->F:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/tagmanager/zzcb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lvp;->e()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    invoke-interface {v4}, Ldd;->l()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lvp;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
