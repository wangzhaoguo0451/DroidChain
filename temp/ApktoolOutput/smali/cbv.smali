.class public final Lcbv;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcbv;->a:Lcbv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcbo;
    .locals 1

    sget-object v0, Lcbv;->a:Lcbv;

    if-nez v0, :cond_0

    new-instance v0, Lcbv;

    invoke-direct {v0}, Lcbv;-><init>()V

    sput-object v0, Lcbv;->a:Lcbv;

    :cond_0
    new-instance v0, Lcbo;

    invoke-direct {v0, p0, p1}, Lcbo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcbo;
    .locals 2

    sget-object v0, Lcbv;->a:Lcbv;

    if-nez v0, :cond_0

    new-instance v0, Lcbv;

    invoke-direct {v0}, Lcbv;-><init>()V

    sput-object v0, Lcbv;->a:Lcbv;

    :cond_0
    new-instance v0, Lcbo;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcbo;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
