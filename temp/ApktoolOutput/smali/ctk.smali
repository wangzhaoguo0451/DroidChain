.class final Lctk;
.super Ljava/lang/Object;
.source "SonicDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lctl;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLctl;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lctk;->a:Z

    iput-object p2, p0, Lctk;->b:Lctl;

    iput-object p3, p0, Lctk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lctk;->a:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lctk;->b:Lctl;

    iget-object v1, p0, Lctk;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lctl;->a(Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lctk;->b:Lctl;

    invoke-interface {v0}, Lctl;->a()V

    goto :goto_0
.end method
