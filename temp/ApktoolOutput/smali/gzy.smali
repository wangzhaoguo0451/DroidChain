.class public final Lgzy;
.super Ljava/lang/Object;
.source "PushConfig.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:I

.field d:I

.field e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lgzy;->e:J

    .line 18
    const v0, 0x7f020330

    iput v0, p0, Lgzy;->d:I

    .line 19
    const v0, 0x7f020487

    iput v0, p0, Lgzy;->c:I

    .line 20
    iput-object p1, p0, Lgzy;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lgzy;->b:Ljava/lang/String;

    .line 22
    return-void
.end method
