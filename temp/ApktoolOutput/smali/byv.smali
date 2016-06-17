.class public final Lbyv;
.super Lbxp;
.source "RealResponseBody.java"


# instance fields
.field private final a:Lbxf;

.field private final b:Lhss;


# direct methods
.method public constructor <init>(Lbxf;Lhss;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lbxp;-><init>()V

    .line 28
    iput-object p1, p0, Lbyv;->a:Lbxf;

    .line 29
    iput-object p2, p0, Lbyv;->b:Lhss;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lbyv;->a:Lbxf;

    invoke-static {v0}, Lbyt;->a(Lbxf;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lhss;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbyv;->b:Lhss;

    return-object v0
.end method
