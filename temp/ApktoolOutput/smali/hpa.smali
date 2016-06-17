.class public final Lhpa;
.super Ljava/lang/Object;
.source "RootKitController.java"


# static fields
.field private static a:Lhpa;

.field private static b:Lhpo;

.field private static c:I


# instance fields
.field private d:J

.field private e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lhpa;->b:Lhpo;

    .line 38
    const/4 v0, 0x0

    sput v0, Lhpa;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lhpa;->d:J

    .line 40
    iput-boolean v0, p0, Lhpa;->e:Z

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lhpa;->f:Z

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lhpa;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lhpa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhpa;->a:Lhpa;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lhpa;

    invoke-direct {v0}, Lhpa;-><init>()V

    sput-object v0, Lhpa;->a:Lhpa;

    .line 63
    :cond_0
    sget-object v0, Lhpa;->a:Lhpa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lhpo;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    sput-object p0, Lhpa;->b:Lhpo;

    .line 48
    return-void
.end method

.method public static b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 88
    sget-object v2, Lhoz;->a:[Ljava/lang/String;

    move v1, v0

    .line 90
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    .line 91
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/su"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    new-instance v0, Lhpn;

    invoke-direct {v0}, Lhpn;-><init>()V

    .line 477
    invoke-static {p0, p1}, Lhpn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhpe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {}, Lhpa;->e()Lhpo;

    invoke-static {}, Lhpo;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final e()Lhpo;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lhpa;->b:Lhpo;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lhpo;->a()V

    .line 55
    :cond_0
    sget-object v0, Lhpa;->b:Lhpo;

    return-object v0
.end method

.method private static f()I
    .locals 1

    .prologue
    .line 689
    sget v0, Lhpa;->c:I

    if-ltz v0, :cond_0

    .line 690
    sget v0, Lhpa;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lhpa;->c:I

    .line 695
    :goto_0
    sget v0, Lhpa;->c:I

    return v0

    .line 692
    :cond_0
    const/4 v0, 0x0

    sput v0, Lhpa;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lhpf;
    .locals 6
    .parameter

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    new-instance v0, Lhpf;

    invoke-direct {v0}, Lhpf;-><init>()V

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhpf;->a:Z

    .line 255
    const-string v1, "Un-install package path is null or empty."

    invoke-virtual {v0, v1}, Lhpf;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-object v0

    .line 261
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lhpa;->f:Z

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall "

    .line 269
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {}, Lhpa;->f()I

    move-result v2

    .line 273
    new-instance v3, Lhpc;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, v2, v4, v2, v0}, Lhpc;-><init>(I[Ljava/lang/String;ILhpf;)V

    .line 310
    invoke-static {}, Lhpi;->a()Lhpi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lhpi;->a(Lhpg;)Lhpg;

    move-result-object v1

    invoke-virtual {v1}, Lhpg;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_1
    :try_start_2
    const-string v1, "pm uninstall "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lhpf;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 170
    monitor-enter p0

    :try_start_0
    new-instance v0, Lhpf;

    invoke-direct {v0}, Lhpf;-><init>()V

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 172
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhpf;->a:Z

    .line 174
    const-string v1, "Install package path is null or empty."

    invoke-virtual {v0, v1}, Lhpf;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_1
    monitor-exit p0

    return-object v0

    .line 171
    :cond_1
    :try_start_1
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v1, p0, Lhpa;->f:Z

    if-eqz v1, :cond_4

    .line 181
    const-string v1, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install -r "

    .line 188
    :goto_2
    if-eqz p2, :cond_3

    .line 189
    const-string v2, "EXTERNAL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {}, Lhpa;->f()I

    move-result v2

    .line 199
    new-instance v3, Lhpb;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, v2, v4, v0}, Lhpb;-><init>(I[Ljava/lang/String;Lhpf;)V

    .line 233
    invoke-static {}, Lhpi;->a()Lhpi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lhpi;->a(Lhpg;)Lhpg;

    move-result-object v1

    invoke-virtual {v1}, Lhpg;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_4
    :try_start_2
    const-string v1, "pm install -r "

    goto :goto_2

    .line 191
    :cond_5
    const-string v2, "INTERNAL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lhpf;
    .locals 5
    .parameter

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    new-instance v0, Lhpf;

    invoke-direct {v0}, Lhpf;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhpf;->a:Z

    const-string v1, "Command is empty."

    invoke-virtual {v0, v1}, Lhpf;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lhpa;->f()I

    move-result v1

    new-instance v2, Lhpd;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v1, v3, v1, v0}, Lhpd;-><init>(I[Ljava/lang/String;ILhpf;)V

    invoke-static {}, Lhpi;->a()Lhpi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lhpi;->a(Lhpg;)Lhpg;

    move-result-object v1

    invoke-virtual {v1}, Lhpg;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 105
    iget-boolean v0, p0, Lhpa;->e:Z

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lhpa;->e()Lhpo;

    invoke-static {}, Lhpo;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhpa;->e:Z

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhpa;->d:J

    .line 118
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lhpa;->e:Z

    return v0

    .line 111
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    iget-wide v2, p0, Lhpa;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 113
    invoke-static {}, Lhpa;->e()Lhpo;

    invoke-static {}, Lhpo;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhpa;->e:Z

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhpa;->d:J

    goto :goto_0
.end method
