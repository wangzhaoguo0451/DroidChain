.class public abstract Lbog;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lbog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lbod;

    invoke-direct {v0}, Lbod;-><init>()V

    sput-object v0, Lbog;->a:Lbog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbog;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lbog;->a:Lbog;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lboa;IIFFFFFFFFFFFFFFFF)Lboa;
.end method

.method public abstract a(Lboa;IILboi;)Lboa;
.end method
