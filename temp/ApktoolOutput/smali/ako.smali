.class public final Lako;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"


# static fields
.field private static volatile a:Lakq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lakp;

    invoke-direct {v0}, Lakp;-><init>()V

    sput-object v0, Lako;->a:Lakq;

    return-void
.end method

.method public static a(Lakq;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-object p0, Lako;->a:Lakq;

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    sget-object v0, Lako;->a:Lakq;

    invoke-interface {v0, p0}, Lakq;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
