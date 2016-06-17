.class public final Laoc;
.super Ljava/lang/Object;
.source "AnimatedDrawableDiagnosticsNoop.java"

# interfaces
.implements Lmv;


# static fields
.field private static a:Laoc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Laoc;

    invoke-direct {v0}, Laoc;-><init>()V

    sput-object v0, Laoc;->a:Laoc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laoc;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Laoc;->a:Laoc;

    return-object v0
.end method
