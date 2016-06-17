.class public final Lcgj;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcgj;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcgj;
    .locals 1

    sget-object v0, Lcgj;->a:Lcgj;

    if-nez v0, :cond_0

    new-instance v0, Lcgj;

    invoke-direct {v0}, Lcgj;-><init>()V

    sput-object v0, Lcgj;->a:Lcgj;

    :cond_0
    sget-object v0, Lcgj;->a:Lcgj;

    return-object v0
.end method
