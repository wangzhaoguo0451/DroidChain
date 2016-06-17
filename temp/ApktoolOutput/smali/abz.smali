.class public final Labz;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Labz;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Labz;->b:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Labz;->c:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Labz;->d:Ljava/lang/String;

    .line 25
    iput-wide v2, p0, Labz;->e:J

    .line 26
    iput-wide v2, p0, Labz;->f:J

    return-void
.end method
