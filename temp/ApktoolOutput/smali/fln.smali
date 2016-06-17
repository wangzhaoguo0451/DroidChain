.class final Lfln;
.super Ljava/lang/Object;
.source "AbsCommunityPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lflh;


# direct methods
.method private constructor <init>(Lflh;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lfln;->a:Lflh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflh;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lfln;-><init>(Lflh;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lfln;->a:Lflh;

    invoke-virtual {v0}, Lflh;->c()V

    .line 154
    invoke-static {}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a()V

    .line 155
    return-void
.end method
