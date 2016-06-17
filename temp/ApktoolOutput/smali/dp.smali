.class public final Ldp;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final a:Ldq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lds;

    invoke-direct {v0}, Lds;-><init>()V

    sput-object v0, Ldp;->a:Ldq;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Ldr;

    invoke-direct {v0}, Ldr;-><init>()V

    sput-object v0, Ldp;->a:Ldq;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    sget-object v0, Ldp;->a:Ldq;

    invoke-interface {v0, p0}, Ldq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    sget-object v0, Ldp;->a:Ldq;

    invoke-interface {v0, p0}, Ldq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
