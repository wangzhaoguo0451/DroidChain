.class public final Lcml;
.super Ljava/lang/Object;
.source "SnsManager.java"


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "1483181040"

    sput-object v0, Lcml;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcml;->d:Ljava/lang/String;

    const-string v1, "wxed6dfca0ae67f7a3"

    invoke-direct {p0, v0, v1}, Lcml;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcml;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcml;->b:Ljava/lang/String;

    .line 43
    sget-object v0, Ld;->e:Landroid/content/Context;

    invoke-static {v0, p2}, Lcbv;->b(Landroid/content/Context;Ljava/lang/String;)Lcbo;

    move-result-object v0

    iput-object v0, p0, Lcml;->c:Lcbo;

    .line 44
    iget-object v0, p0, Lcml;->c:Lcbo;

    invoke-virtual {v0, p2}, Lcbo;->a(Ljava/lang/String;)Z

    .line 45
    return-void
.end method
