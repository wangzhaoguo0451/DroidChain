.class public final Lfhi;
.super Ljava/lang/Object;
.source "CommunityPostContentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lfhi;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lfhi;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    return-void
.end method
