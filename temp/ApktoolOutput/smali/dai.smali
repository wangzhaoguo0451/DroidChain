.class public final Ldai;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ldas;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ldaa;


# direct methods
.method public constructor <init>(Ldaa;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Ldai;->b:Ldaa;

    iput-object p2, p0, Ldai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldat;)Ldar;
    .locals 3
    .parameter

    .prologue
    .line 428
    new-instance v0, Ldaz;

    iget-object v1, p0, Ldai;->b:Ldaa;

    iget-object v2, p0, Ldai;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Ldaz;-><init>(Ldaa;Ljava/lang/String;Ldat;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ldai;->a:Ljava/lang/String;

    return-object v0
.end method
