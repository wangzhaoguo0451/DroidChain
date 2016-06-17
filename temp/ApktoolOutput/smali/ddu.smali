.class public final Lddu;
.super Ljava/lang/Object;
.source "IncompatibleAppEvent.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lddu;->a:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lddu;->b:Z

    .line 14
    return-void
.end method
