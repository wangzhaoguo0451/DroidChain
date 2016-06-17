.class public final Lafy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafx;

.field private final synthetic b:I

.field private final synthetic c:Ladw;

.field private final synthetic d:[Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:I

.field private final synthetic g:Lacj;


# direct methods
.method public constructor <init>(Lafx;ILadw;[Ljava/lang/String;Ljava/lang/String;ILacj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafy;->a:Lafx;

    iput p2, p0, Lafy;->b:I

    iput-object p3, p0, Lafy;->c:Ladw;

    iput-object p4, p0, Lafy;->d:[Ljava/lang/String;

    iput-object p5, p0, Lafy;->e:Ljava/lang/String;

    iput p6, p0, Lafy;->f:I

    iput-object p7, p0, Lafy;->g:Lacj;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 62
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v5, v0, Lade;->a:Landroid/content/Context;

    .line 65
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 67
    iget v0, p0, Lafy;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ReadSms runnable"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ld;->b()V

    .line 70
    iget-object v0, p0, Lafy;->c:Ladw;

    iget-object v1, p0, Lafy;->a:Lafx;

    iget-object v1, v1, Lafx;->b:Ladk;

    iget-object v2, p0, Lafy;->d:[Ljava/lang/String;

    iget-object v3, p0, Lafy;->e:Ljava/lang/String;

    iget v4, p0, Lafy;->f:I

    .line 71
    iget-object v10, p0, Lafy;->g:Lacj;

    .line 70
    invoke-static/range {v0 .. v10}, Lafx;->a(Ladw;Ladk;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLacj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v0, p0, Lafy;->a:Lafx;

    iput-boolean v11, v0, Lafx;->a:Z

    .line 77
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 74
    iget-object v0, p0, Lafy;->a:Lafx;

    iput-boolean v11, v0, Lafx;->a:Z

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lafy;->a:Lafx;

    iput-boolean v11, v1, Lafx;->a:Z

    .line 75
    throw v0
.end method
