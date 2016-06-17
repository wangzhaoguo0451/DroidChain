.class public final Leoj;
.super Ljava/lang/Object;
.source "UriSegment.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leoj;-><init>(Ljava/lang/String;B)V

    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Leoj;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Leoj;->b:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Leoj;->a:Ljava/lang/String;

    return-object v0
.end method
