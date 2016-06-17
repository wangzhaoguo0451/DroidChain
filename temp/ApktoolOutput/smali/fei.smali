.class public final Lfei;
.super Ljava/lang/Object;
.source "CommunityQueryGroupAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lfek;

.field private d:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfek;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lfej;

    invoke-direct {v0, p0}, Lfej;-><init>(Lfei;)V

    iput-object v0, p0, Lfei;->d:Landroid/os/AsyncTask;

    .line 25
    iput-object p2, p0, Lfei;->a:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lfei;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lfei;->c:Lfek;

    .line 28
    return-void
.end method

.method static synthetic a(Lfei;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lfei;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lfei;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lfei;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfei;)Lfek;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lfei;->c:Lfek;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lfei;->d:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method
