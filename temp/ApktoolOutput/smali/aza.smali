.class public final Laza;
.super Lcd;

# interfaces
.implements Layn;
.implements Layo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcd",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;",
        "Layn;",
        "Layo;"
    }
.end annotation


# instance fields
.field public final f:Laym;

.field public g:Z

.field private h:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laym;)V
    .locals 0

    invoke-direct {p0, p1}, Lcd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Laza;->f:Laym;

    return-void
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iput-object p1, p0, Laza;->h:Lcom/google/android/gms/common/ConnectionResult;

    iget-boolean v0, p0, Lcd;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcd;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laza;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcd;->a()V

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0, p0}, Laym;->a(Layn;)V

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0, p0}, Laym;->a(Layo;)V

    iget-object v0, p0, Laza;->h:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laza;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Laza;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0}, Laym;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0}, Laym;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laza;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0}, Laym;->b()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laza;->g:Z

    invoke-direct {p0, p1}, Laza;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcd;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0, p1, p3}, Laym;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0}, Laym;->c()V

    return-void
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Laza;->h:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laza;->g:Z

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0, p0}, Laym;->b(Layn;)V

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0, p0}, Laym;->b(Layo;)V

    iget-object v0, p0, Laza;->f:Laym;

    invoke-interface {v0}, Laym;->c()V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laza;->g:Z

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Laza;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
